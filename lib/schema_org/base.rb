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

    def initialize(term, enumeration, enumerations = nil)
      @term = term
      @enumerations = (enumerations || [enumeration]).freeze
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

    def as_jsonld(root: true)
      enum_iri
    end

    def to_json(*_args)
      JSON.generate(enum_iri)
    end
  end

  class Base
    def self.schema_types
      [self].freeze
    end

    def self.schema_type_argument!(other_type)
      valid = other_type.is_a?(Class) && other_type <= Base && other_type.name&.start_with?("SchemaOrg::")
      raise TypeError, "expected a generated schema class" unless valid

      other_type
    end

    def self.schema_type?(other_type)
      schema_type_argument!(other_type)
      schema_types.include?(other_type)
    end

    def self.property_definitions
      ancestors.each_with_object({}) do |ancestor, result|
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
      object_id = __id__
      if stack.key?(object_id)
        raise CircularReferenceError, "circular reference at #{path}"
      end

      stack[object_id] = true
      result = {}
      result["@context"] = CONTEXT if root
      result["@type"] = self.class.name.split("::").last
      self.class.property_definitions.each do |name, definition|
        next unless @attributes.key?(name)

        value = @attributes[name]
        result[definition[:schema_name]] = format_value(value, definition[:ranges], stack, "#{path}.#{name}")
      end
      result
    ensure
      stack.delete(object_id)
    end

    def format_value(value, ranges, stack, path)
      return value.map.with_index { |item, index| format_value(item, ranges, stack, "#{path}[#{index}]") } if value.is_a?(Array)
      return value.enum_iri if value.is_a?(EnumerationValue)
      return value.send(:serialize_jsonld, root: false, stack:, path:) if value.is_a?(Base)
      return value.iso8601 if ranges.include?("Date") && value.is_a?(::Date) && !value.is_a?(::DateTime)
      return value.iso8601.split("T", 2).last if ranges == ["Time"] && value.is_a?(::Time)
      return value.iso8601 if ranges.include?("DateTime") && (value.is_a?(::DateTime) || value.is_a?(::Time))

      value
    end

    def validate_property!(name, value, definition)
      return if value.nil?
      return value.each_with_index { |item, index| validate_single!(name, item, definition, index) } if value.is_a?(Array)

      validate_single!(name, value, definition)
    end

    def validate_single!(name, value, definition, index = nil)
      ranges = definition[:ranges]
      return if ranges.empty? || ranges.any? { |range| valid_value_for_range?(value, range) }

      location = index.nil? ? name : "#{name}[#{index}]"
      raise InvalidPropertyValueError,
        "invalid #{location} for #{definition[:schema_name]}: allowed #{ranges.join(", ")}, got #{value.class}"
    end

    def valid_value_for_range?(value, range)
      klass = SchemaOrg.const_get(range, false) if SchemaOrg.const_defined?(range, false)
      return false unless klass
      return value.is_a?(EnumerationValue) && value.schema_type?(klass) if klass <= Base && klass.schema_types.any? { |type| type.name&.end_with?("Enumeration") || type.name&.include?("Enumeration") }
      return value.is_a?(::String) if klass.schema_types.any? { |type| ["SchemaOrg::Text", "SchemaOrg::URL"].include?(type.name) }
      return value == true || value == false if range == "Boolean"
      return value.is_a?(::Numeric) if range == "Number"
      return value.is_a?(::Integer) if range == "Integer"
      return value.is_a?(::Float) if range == "Float"
      return value.is_a?(::Date) && !value.is_a?(::DateTime) if range == "Date"
      return value.is_a?(::DateTime) || value.is_a?(::Time) if range == "DateTime"
      return value.is_a?(::Time) if range == "Time"
      return value.is_a?(Base) && value.schema_type?(klass) if klass <= Base

      false
    end
  end
end
