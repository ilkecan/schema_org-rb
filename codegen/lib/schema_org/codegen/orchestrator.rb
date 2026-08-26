module SchemaOrg
  module Codegen
    class Orchestrator
      def initialize(generator:, manifest:, vocabulary:, naming: Naming.new, schema_version: Models::SchemaVersion.current)
        @generator = generator
        @manifest = manifest
        @vocabulary = vocabulary
        @naming = naming
        @schema_version = schema_version
      end

      def orchestrate
        generate_files
        manifest.stale_files.each { |path| manifest.remove_stale(path) }
        manifest.save
      end

      private

      attr_reader :generator, :manifest, :vocabulary, :naming, :schema_version

      def generate_files
        generator.generate schema_version
        generator.generate generated_vocabulary
        properties = build_properties
        generator.generate build_signature(properties)
        vocabulary.classes.each do |subject|
          name = vocabulary.term_name(subject.url)
          generate_mixin(subject, properties[name])
          generate_type(subject, properties[name])
        end
      end

      def build_signature(properties)
        property_owners = properties.each_with_object({}) do |(schema_name, entries), owners|
          entries.each do |property|
            owner = owners[property.schema_name]
            owners[property.schema_name] = [owner, schema_name].compact.min
          end
        end
        Models::Signature.new(
          types: vocabulary.classes.map do |subject|
            schema_name = vocabulary.term_name(subject.url)
            names = [schema_name] + vocabulary.ancestry(schema_name)
            all_properties = names.reverse_each.each_with_object({}) do |name, result|
              (properties[name] || []).each { |property| result[property.schema_name] = property }
            end
            inherited_property_names = names.drop(1).flat_map { |name| (properties[name] || []).map(&:schema_name) }
            direct_properties = (properties[schema_name] || []).reject do |property|
              inherited_property_names.include?(property.schema_name) ||
                property_owners[property.schema_name] != schema_name
            end
            {
              name: naming.constant_name(schema_name),
              parents: signature_parents(subject).map { |parent| naming.constant_name(parent) },
              properties: direct_properties.map { |property| {property:, type: signature_type(property)} },
              constructor_properties: all_properties.values.sort_by(&:schema_name).map do |property|
                {property:, type: signature_type(property)}
              end,
              abstract: vocabulary.data_type?(schema_name),
              enum_members: enum_members(subject, schema_name)
            }
          end
        )
      end

      def signature_type(property)
        types = property.types.filter_map do |range|
          if vocabulary.descendant_of?(range, "Integer")
            "Integer"
          elsif vocabulary.descendant_of?(range, "Float")
            "Float"
          elsif vocabulary.descendant_of?(range, "Number")
            "Numeric"
          elsif vocabulary.descendant_of?(range, "Boolean")
            "bool"
          elsif vocabulary.descendant_of?(range, "Date")
            "::Date"
          elsif vocabulary.descendant_of?(range, "DateTime")
            "::DateTime | ::Time"
          elsif vocabulary.descendant_of?(range, "Time")
            "::Time"
          elsif vocabulary.descendant_of?(range, "Text")
            "String"
          elsif vocabulary.enumeration?(range)
            "SchemaOrg::EnumerationValue[untyped]"
          else
            "SchemaOrg::_#{naming.constant_name(range)}"
          end
        end.uniq
        types.empty? ? "untyped" : types.join(" | ")
      end

      def signature_parents(subject)
        parents = vocabulary.direct_parents(subject)
        parents.reject do |parent|
          parents.any? { |other| other != parent && vocabulary.descendant_of?(other, parent) }
        end
      end

      def enum_members(_subject, schema_name)
        vocabulary.enumeration_members.filter_map do |member|
          next unless member.type.any? { |type| vocabulary.schema_name(type) == schema_name }

          member_name = vocabulary.term_name(member.url)
          declared = member.type.filter_map { |type| vocabulary.schema_name(type) }
          {
            constant: naming.enumeration_constant_name(member_name),
            types: declared.map { |type| naming.constant_name(type) }
          }
        end.sort_by { |member| member[:constant] }
      end

      def generated_vocabulary
        constants = vocabulary.classes.map do |subject|
          schema_name = vocabulary.term_name(subject.url)
          {schema_name:, ruby_name: naming.constant_name(schema_name)}
        end
        files = vocabulary.classes.map do |subject|
          schema_name = vocabulary.term_name(subject.url)
          {file_name: naming.file_name(schema_name), ruby_name: naming.constant_name(schema_name)}
        end
        files << {file_name: "schema_version", ruby_name: "SCHEMA_VERSION"}
        Models::GeneratedVocabulary.new(
          constants:,
          files:,
          enumeration_names: vocabulary.enumeration_classes.map { |subject| naming.constant_name(vocabulary.term_name(subject.url)) }
        )
      end

      def build_properties
        supersedes = vocabulary.properties.each_with_object({}) do |property, result|
          next unless property.superseded_by

          result[vocabulary.term_name(property.superseded_by)] = vocabulary.term_name(property.url)
        end
        properties = Hash.new { |hash, key| hash[key] = {} }
        vocabulary.properties.each do |subject|
          schema_name = vocabulary.term_name(subject.url)
          property = Models::Property.new(
            comment_lines: subject.comment_lines,
            external_ranges: vocabulary.property_external_ranges(subject),
            inverse_of: subject.inverse_of && vocabulary.term_name(subject.inverse_of),
            name: naming.method_name(schema_name),
            schema_name:,
            schema_url: subject.url,
            superseded_by: subject.superseded_by && vocabulary.term_name(subject.superseded_by),
            supersedes: supersedes[schema_name],
            types: vocabulary.property_ranges(subject)
          )
          vocabulary.property_domains(subject).each { |domain| properties[domain][schema_name] ||= property }
        end
        properties.transform_values { |values| values.values.sort_by(&:schema_name) }
      end

      def generate_mixin(subject, properties)
        schema_name = vocabulary.term_name(subject.url)
        generator.generate Models::Mixin.new(
          name: naming.constant_name(schema_name).to_sym,
          parents: vocabulary.direct_parents(subject).map { |parent| naming.constant_name(parent).to_sym },
          properties: properties || []
        )
      end

      def generate_type(subject, _properties)
        schema_name = vocabulary.term_name(subject.url)
        superseded_by = subject.superseded_by && vocabulary.term_name(subject.superseded_by)
        supersedes = vocabulary.classes.find { |candidate| candidate.superseded_by == schema_name.to_sym }&.label
        members = vocabulary.enumeration_members.select do |member|
          member.type.any? { |type| vocabulary.schema_name(type) == schema_name }
        end.sort_by { |member| vocabulary.term_name(member.url) }
        generator.generate Models::Type.new(
          comment_lines: subject.comment_lines,
          name: naming.constant_name(schema_name).to_sym,
          schema_name:,
          schema_types: [naming.constant_name(schema_name)] + vocabulary.ancestry(schema_name).map { |type| naming.constant_name(type) },
          superseded_by:,
          supersedes:,
          url: subject.url,
          abstract: vocabulary.data_type_classes.any? { |data_type| vocabulary.term_name(data_type.url) == schema_name },
          enum_members: members.map do |member|
            member_name = vocabulary.term_name(member.url)
            declared = member.type.filter_map { |type| vocabulary.schema_name(type) }
            [naming.enumeration_constant_name(member_name), member_name, declared.map { |type| naming.constant_name(type) }]
          end
        )
      end
    end
  end
end
