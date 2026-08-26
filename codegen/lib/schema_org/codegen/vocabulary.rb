module SchemaOrg
  module Codegen
    class Vocabulary
      SCHEMA_HTTP = "http://schema.org/"
      SCHEMA_HTTPS = "https://schema.org/"
      TOP_LEVEL_RESERVED_CONSTANTS = %w[
        Base EnumerationValue GeneratedVocabulary UnknownPropertyError InvalidPropertyValueError
        AbstractTypeError CircularReferenceError VERSION SCHEMA_VERSION CONTEXT
      ].freeze
      ENUMERATION_RESERVED_CONSTANTS = %w[SCHEMA_NAME SCHEMA_TYPES ABSTRACT_TYPE VALUES].freeze

      attr_reader :subjects, :classes, :properties, :enumeration_members

      def initialize(parser:, naming: Naming.new)
        @naming = naming
        @subjects = parser.subjects.select { |subject| schema_uri?(subject.url) }
        @by_uri = {}
        subjects.each do |subject|
          uri = subject.url.to_s
          raise ValidationError, "Duplicate schema URI #{uri}" if @by_uri.key?(uri)

          @by_uri[uri] = subject
        end
        @classes = subjects.select { |subject| subject.type? :Class }.sort_by { |subject| term_name(subject.url) }
        @properties = subjects.select { |subject| subject.type? :Property }.sort_by { |subject| term_name(subject.url) }
        @class_by_name = classes.to_h { |subject| [term_name(subject.url), subject] }
        @property_by_name = properties.to_h { |subject| [term_name(subject.url), subject] }
        @enumeration_classes = classes.select { |subject| descendant?(term_name(subject.url), "Enumeration") }
        @data_type_classes = classes.select { |subject| descendant?(term_name(subject.url), "DataType") }
        @enumeration_members = subjects.reject { |subject| subject.type? :Class }.select do |subject|
          subject.type.any? { |type| schema_name(type) && descendant?(schema_name(type), "Enumeration") }
        end.sort_by { |subject| term_name(subject.url) }
        validate_references!
        validate_graph!
        validate_names!
      end

      attr_reader :enumeration_classes

      attr_reader :data_type_classes

      def ordinary_classes
        classes - data_type_classes - enumeration_classes
      end

      def direct_parents(subject)
        parent_names(subject).select { |parent| @class_by_name.key?(parent) }.uniq.sort
      end

      def external_parents(subject)
        subject.parents.filter_map { |parent| parent.to_s unless schema_name(parent) }.uniq.sort
      end

      def ancestry(subject_or_name)
        name = subject_or_name.respond_to?(:url) ? term_name(subject_or_name.url) : subject_or_name.to_s
        result = []
        queue = direct_parents(@class_by_name.fetch(name)).map { |parent| [parent, 1] }
        seen = {}
        until queue.empty?
          current, = queue.shift
          next if seen[current]

          seen[current] = true
          result << current
          queue.concat(direct_parents(@class_by_name.fetch(current)).map { |parent| [parent, 1] })
        end
        result
      end

      def direct_properties(type_name)
        properties.select do |property|
          property_domains(property).include?(type_name)
        end.sort_by { |property| term_name(property.url) }
      end

      def property_domains(property)
        property.used_on.filter_map { |domain| schema_name(domain) }.uniq.sort
      end

      def property_external_domains(property)
        property.used_on.filter_map { |domain| domain.to_s unless schema_name(domain) }.uniq.sort
      end

      def property_ranges(property)
        property.range_types.filter_map { |range| schema_name(range) }.uniq.sort
      end

      def property_external_ranges(property)
        property.range_types.filter_map { |range| range.to_s unless schema_name(range) }.uniq.sort
      end

      def term_name(uri)
        schema_name(uri) || uri.to_s
      end

      def schema_name(value)
        return nil if value == :Class || value == :Property
        return value.to_s if value.is_a?(Symbol)

        text = value.to_s
        return nil unless schema_uri?(text)

        text.delete_prefix(SCHEMA_HTTP).delete_prefix(SCHEMA_HTTPS)
      end

      def schema_uri?(value)
        text = value.to_s
        text.start_with?(SCHEMA_HTTP, SCHEMA_HTTPS)
      end

      def data_type?(name)
        @data_type_classes.any? { |subject| term_name(subject.url) == name }
      end

      def enumeration?(name)
        @enumeration_classes.any? { |subject| term_name(subject.url) == name }
      end

      def descendant_of?(name, ancestor)
        descendant?(name, ancestor)
      end

      private

      def parent_names(subject)
        (subject.parents + subject.type).filter_map { |parent| schema_name(parent) }
      end

      def validate_references!
        errors = []
        classes.each do |subject|
          subject.parents.filter_map { |parent| schema_name(parent) }.each do |parent|
            next if @class_by_name.key?(parent)

            errors << "Unknown schema.org parent #{parent} for #{term_name(subject.url)}"
          end
        end
        properties.each do |property|
          property_domains(property).each do |domain|
            next if @class_by_name.key?(domain)

            errors << "Unknown schema.org domain #{domain} for #{term_name(property.url)}"
          end
          property_ranges(property).each do |range|
            next if @class_by_name.key?(range)

            errors << "Unknown schema.org range #{range} for #{term_name(property.url)}"
          end
        end
        raise ValidationError, errors.join("; ") unless errors.empty?
      end

      def validate_graph!
        colors = {}
        classes.each do |subject|
          visit = lambda do |name, path = []|
            case colors[name]
            when :gray
              cycle = (path + [name]).drop_while { |item| item != name }.uniq
              raise ValidationError, "Inheritance cycle involving #{cycle.join(", ")}"
            when :black
              next
            end
            colors[name] = :gray
            direct_parents(@class_by_name.fetch(name)).each { |parent| visit.call(parent, path + [name]) }
            colors[name] = :black
          end
          visit.call(term_name(subject.url))
        end
      end


      def validate_names!
        validate_name_set(classes.map { |subject| term_name(subject.url) }, :constant) do |name|
          @naming.constant_name(name)
        end
        validate_name_set(classes.map { |subject| term_name(subject.url) }, :file) do |name|
          @naming.file_name(name)
        end
        validate_name_set(properties.map { |property| term_name(property.url) }, :method) do |name|
          @naming.method_name(name)
        end
        enumeration_classes.each do |enum|
          values = enumeration_members.select do |member|
            member.type.any? { |type| schema_name(type) == term_name(enum.url) }
          end
          validate_name_set(values.map { |value| term_name(value.url) }, :enumeration_constant) do |name|
            @naming.enumeration_constant_name(name)
          end
        end
      end

      def validate_name_set(schema_names, kind)
        reserved = case kind
        when :constant
          TOP_LEVEL_RESERVED_CONSTANTS
        when :enumeration_constant
          ENUMERATION_RESERVED_CONSTANTS
        when :method
          reserved_methods
        else
          []
        end
        groups = schema_names.group_by { |schema_name| yield(schema_name).to_s }
        collisions = groups.filter_map do |ruby_name, terms|
          next unless reserved.include?(ruby_name) || terms.length > 1

          "#{terms.uniq.join(", ")} (#{ruby_name})"
        end
        return if collisions.empty?

        raise ValidationError, "Ruby #{kind} collision for #{collisions.join("; ")}"
      end

      def reserved_methods
        base_methods = %i[
          schema_types schema_type_argument! schema_type? property_definitions initialize read_property
          write_property as_jsonld to_json freeze
        ]
        (base_methods + Object.instance_methods).map(&:to_s).uniq
      end

      def descendant?(name, ancestor, seen = {})
        return true if name == ancestor
        return false if seen[name] || !@class_by_name.key?(name)

        seen[name] = true
        direct_parents(@class_by_name.fetch(name)).any? { |parent| descendant?(parent, ancestor, seen) }
      end
    end
  end
end
