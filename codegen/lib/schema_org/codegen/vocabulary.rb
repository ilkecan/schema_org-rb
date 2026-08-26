module SchemaOrg
  module Codegen
    class Vocabulary
      SCHEMA_HTTP = "http://schema.org/"
      SCHEMA_HTTPS = "https://schema.org/"
      LEGACY_EXTERNAL_PARENTS = ["MedicalBusiness"].freeze

      attr_reader :subjects, :classes, :properties, :enumeration_members

      def initialize(parser:, strict: true)
        @strict = strict
        @subjects = parser.subjects
        @by_uri = {}
        subjects.each do |subject|
          uri = subject.url
          raise ValidationError, "Duplicate schema URI #{uri}" if @by_uri.key?(uri)

          @by_uri[uri] = subject
        end
        @classes = subjects.select { |s| s.type? :Class }.sort_by { |s| term_name(s.url) }
        @properties = subjects.select { |s| s.type? :Property }.sort_by { |s| term_name(s.url) }
        @class_by_name = classes.to_h { |s| [term_name(s.url), s] }
        @property_by_name = properties.to_h { |s| [term_name(s.url), s] }
        if strict
          validate_references!
        end
        validate_graph!
        @enumeration_classes = classes.select { |s| descendant?(term_name(s.url), "Enumeration") }
        @data_type_classes = classes.select { |s| descendant?(term_name(s.url), "DataType") }
        @enumeration_members = subjects.reject { |s| s.type? :Class }.select do |s|
          s.type.any? { |type| schema_name(type) && descendant?(schema_name(type), "Enumeration") }
        end.sort_by { |s| term_name(s.url) }
      end

      def enumeration_classes
        @enumeration_classes
      end

      def data_type_classes
        @data_type_classes
      end

      def ordinary_classes
        classes - data_type_classes - enumeration_classes
      end

      def direct_parents(subject)
        parents = subject.parents + subject.type
        parents.filter_map { |parent| schema_name(parent) }.select { |parent| @class_by_name.key?(parent) }.uniq.sort
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
        direct = properties.select do |property|
          property.used_on.any? { |domain| schema_name(domain) == type_name }
        end
        direct.sort_by { |property| term_name(property.url) }
      end

      def property_domains(property)
        property.used_on.filter_map { |domain| schema_name(domain) }.sort
      end

      def property_ranges(property)
        property.range_types.filter_map { |range| schema_name(range) }.sort
      end

      def term_name(uri)
        schema_name(uri) || uri.to_s
      end

      def schema_name(value)
        return value.to_s if value.is_a?(Symbol)

        text = value.to_s
        return nil unless text.start_with?(SCHEMA_HTTP, SCHEMA_HTTPS)

        text.split("/").last
      end

      private

      def validate_references!
        classes.each do |subject|
          parents = subject.parents.filter_map { |parent| schema_name(parent) }
          parents.each do |parent|
            next if @class_by_name.key?(parent) || LEGACY_EXTERNAL_PARENTS.include?(parent) && !@strict
            raise ValidationError, "Unknown schema.org parent #{parent} for #{term_name(subject.url)}"
          end
        end
        properties.each do |property|
          property_domains(property).each do |domain|
            next if @class_by_name.key?(domain)

            raise ValidationError, "Unknown schema.org domain #{domain} for #{term_name(property.url)}"
          end
          property_ranges(property).each do |range|
            next if @class_by_name.key?(range)

            raise ValidationError, "Unknown schema.org range #{range} for #{term_name(property.url)}"
          end
        end
      end

      def validate_graph!
        colors = {}
        classes.each do |subject|
          visit = lambda do |name|
            case colors[name]
            when :gray
              raise ValidationError, "Inheritance cycle involving #{name}"
            when :black
              next
            end
            colors[name] = :gray
            direct_parents(@class_by_name.fetch(name)).each { |parent| visit.call(parent) }
            colors[name] = :black
          end
          visit.call(term_name(subject.url))
        end
      end

      def validate_names!
        seen_constants = {}
        classes.each do |subject|
          name = term_name(subject.url)
          ruby_name = name.gsub(/[^A-Za-z0-9_]/, "_")
          if seen_constants.key?(ruby_name)
            raise ValidationError, "Ruby constant collision #{seen_constants[ruby_name]} and #{name}"
          end
          seen_constants[ruby_name] = name
        end
        seen_methods = {}
        properties.each do |property|
          name = term_name(property.url)
          ruby_name = name.underscore
          if seen_methods.key?(ruby_name)
            raise ValidationError, "Ruby method collision #{seen_methods[ruby_name]} and #{name}"
          end
          seen_methods[ruby_name] = name
        end
        enumeration_classes.each do |enum|
          values = enumeration_members.select { |member| member.type.any? { |type| schema_name(type) == term_name(enum.url) } }
          seen = {}
          values.each do |value|
            constant = term_name(value.url).gsub(/[^A-Za-z0-9_]/, "_").underscore.upcase
            if seen.key?(constant)
              raise ValidationError, "Enumeration constant collision #{seen[constant]} and #{term_name(value.url)}"
            end
            seen[constant] = term_name(value.url)
          end
        end
      end

      def descendant?(name, ancestor)
        return true if name == ancestor
        return false unless @class_by_name.key?(name)

        direct_parents(@class_by_name.fetch(name)).any? { |parent| descendant?(parent, ancestor) }
      end
    end
  end
end
