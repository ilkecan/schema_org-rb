# frozen_string_literal: true

require "date"
require "json"

module SchemaOrg
  class UnknownPropertyError < ArgumentError; end
  class InvalidPropertyValueError < TypeError; end
  class AbstractTypeError < TypeError; end
  class CircularReferenceError < StandardError; end

  class EnumerationValue
    attr_reader :term

    def initialize(term, enumerations)
      @term = term.freeze
      @enumerations = enumerations.flat_map(&:schema_types).uniq.freeze
      freeze
    end

    def schema_types
      @enumerations
    end

    def schema_type?(other_type)
      Base.schema_type_argument!(other_type)
      schema_types.include?(other_type)
    end

    def enum_iri
      "#{CONTEXT}/#{term}"
    end

    def as_jsonld(*)
      enum_iri
    end

    def to_json(*_args)
      JSON.generate(enum_iri)
    end

    def ==(other)
      other.is_a?(EnumerationValue) && term == other.term && schema_types == other.schema_types
    end
    alias_method :eql?, :==

    def hash
      [term, schema_types].hash
    end
  end

  class Base
    def self.schema_types
      [self].freeze
    end

    def self.schema_type_argument!(other_type)
      valid = GeneratedVocabulary.generated_class?(other_type)
      raise TypeError, "expected a generated schema class" unless valid

      other_type
    end

    def self.schema_type?(other_type)
      schema_type_argument!(other_type)
      schema_types.include?(other_type)
    end

    def self.property_definitions
      @property_definitions ||= ancestors.each_with_object({}) do |ancestor, result|
        next unless ancestor.respond_to?(:schema_property_definitions)

        ancestor.schema_property_definitions.each { |name, definition| result[name] ||= definition }
      end.freeze
    end

    def initialize(**properties)
      @attributes = {}
      definitions = self.class.property_definitions
      properties.each do |name, value|
        name = name.to_sym
        unless definitions.key?(name)
          raise UnknownPropertyError, "unknown property #{name.inspect} for #{self.class}"
        end

        write_property(name, value)
      end
    end

    def schema_types
      self.class.schema_types
    end

    def schema_type?(other_type)
      self.class.schema_type?(other_type)
    end

    def read_property(name)
      @attributes[name]
    end

    def write_property(name, value)
      raise FrozenError, "can't modify frozen #{self.class}" if frozen?

      definition = self.class.property_definitions.fetch(name) do
        raise UnknownPropertyError, "unknown property #{name.inspect} for #{self.class}"
      end
      validate_property!(name, value, definition)
      if value.nil?
        @attributes.delete(name)
      else
        @attributes[name] = value
      end
      value
    end

    def as_jsonld(root: true)
      serialize_jsonld(root: root, stack: {}, path: self.class.name)
    end

    def to_json(*_args)
      JSON.generate(as_jsonld)
    end

    def freeze
      @attributes.freeze
      super
    end

    private

    def serialize_jsonld(root:, stack:, path:)
      with_active(stack, self, path) do
        result = {}
        result["@context"] = CONTEXT if root
        result["@type"] = self.class.schema_name
        self.class.property_definitions.each do |name, definition|
          next unless @attributes.key?(name)

          value = @attributes[name]
          result[definition[:schema_name]] = format_value(value, definition[:ranges], stack, "#{path}.#{name}")
        end
        result
      end
    end

    def format_value(value, ranges, stack, path)
      return format_array(value, ranges, stack, path) if value.is_a?(Array)
      return format_hash(value, stack, path) if value.is_a?(Hash)
      return value.enum_iri if value.is_a?(EnumerationValue)
      return value.send(:serialize_jsonld, root: false, stack:, path:) if value.is_a?(Base)
      return value.iso8601 if value.instance_of?(::Date) && range_ancestry_includes?(ranges, "Date")
      if value.is_a?(::DateTime) && range_ancestry_includes?(ranges, "DateTime")
        return value.iso8601
      end
      if value.is_a?(::Time)
        return value.iso8601 if range_ancestry_includes?(ranges, "DateTime")
        return value.iso8601.split("T", 2).last if range_ancestry_includes?(ranges, "Time")
      end

      value
    end

    def format_array(value, ranges, stack, path)
      with_active(stack, value, path) do
        value.map.with_index { |item, index| format_value(item, ranges, stack, "#{path}[#{index}]") }
      end
    end

    def format_hash(value, stack, path)
      with_active(stack, value, path) do
        value.to_h { |key, item| [key, format_value(item, [], stack, "#{path}[#{key.inspect}]")] }
      end
    end

    def validate_property!(name, value, definition)
      return if value.nil?
      if value.is_a?(Array)
        if definition[:ranges].empty?
          stack = {}
          with_active(stack, value, name) do
            value.each_with_index { |item, index| validate_single!(name, item, definition, index, stack) }
          end
        else
          value.each_with_index { |item, index| validate_single!(name, item, definition, index, {}) }
        end
        return value
      end

      validate_single!(name, value, definition, nil, {})
    end

    def validate_single!(name, value, definition, index, stack)
      ranges = definition[:ranges]
      location = index.nil? ? name : "#{name}[#{index}]"
      if ranges.empty?
        validate_structural!(value, stack, location)
        return
      end
      return if ranges.any? { |range| valid_value_for_range?(value, range) }

      raise InvalidPropertyValueError,
        "invalid #{location} for #{definition[:schema_name]}: allowed #{ranges.join(", ")}, got #{value.class}"
    end

    def valid_value_for_range?(value, range)
      ruby_name = GeneratedVocabulary.ruby_name(range)
      klass = ruby_name && SchemaOrg.const_get(ruby_name, false)
      return false unless klass

      ancestors = klass.schema_types
      return value.is_a?(EnumerationValue) && value.schema_type?(klass) if GeneratedVocabulary.enumeration?(klass)
      return value.instance_of?(::Integer) if includes_schema_type?(ancestors, "Integer")
      return value.instance_of?(::Float) if includes_schema_type?(ancestors, "Float")
      return value.is_a?(::Numeric) if includes_schema_type?(ancestors, "Number")
      return value == true || value == false if includes_schema_type?(ancestors, "Boolean")
      return value.instance_of?(::Date) if includes_schema_type?(ancestors, "Date")
      return value.is_a?(::DateTime) || value.is_a?(::Time) if includes_schema_type?(ancestors, "DateTime")
      return value.is_a?(::Time) if includes_schema_type?(ancestors, "Time")
      return value.is_a?(::String) if includes_schema_type?(ancestors, "Text")
      return false unless value.is_a?(Base) && GeneratedVocabulary.generated_class?(value.class)

      value.schema_type?(klass)
    end

    def validate_structural!(value, stack, path)
      return if value.is_a?(String) || value.is_a?(Numeric) || value == true || value == false
      if value.is_a?(EnumerationValue)
        return
      end
      if value.is_a?(Base)
        raise InvalidPropertyValueError, "invalid #{path}: expected a generated schema object" unless GeneratedVocabulary.generated_class?(value.class)

        return
      end
      if value.is_a?(Array)
        with_active(stack, value, path) do
          value.each_with_index { |item, index| validate_structural!(item, stack, "#{path}[#{index}]") }
        end
        return
      end
      if value.is_a?(Hash)
        with_active(stack, value, path) do
          value.each do |key, item|
            raise InvalidPropertyValueError, "invalid #{path}: hash keys must be String" unless key.is_a?(String)

            validate_structural!(item, stack, "#{path}[#{key.inspect}]")
          end
        end
        return
      end

      raise InvalidPropertyValueError, "invalid #{path}: unsupported #{value.class}"
    end

    def includes_schema_type?(types, name)
      types.any? { |type| type.schema_name == name }
    end

    def range_ancestry_includes?(ranges, name)
      ranges.any? do |range|
        ruby_name = GeneratedVocabulary.ruby_name(range)
        klass = ruby_name && SchemaOrg.const_get(ruby_name, false)
        klass && includes_schema_type?(klass.schema_types, name)
      end
    end

    def with_active(stack, object, path)
      object_id = object.__id__
      raise CircularReferenceError, "circular reference at #{path}" if stack.key?(object_id)

      stack[object_id] = true
      yield
    ensure
      stack.delete(object_id)
    end
  end
end
