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
        Models::Signature.new(
          types: vocabulary.classes.map do |subject|
            schema_name = vocabulary.term_name(subject.url)
            names = [schema_name] + vocabulary.ancestry(schema_name)
            all_properties = names.each_with_object({}) do |name, result|
              (properties[name] || []).each { |property| result[property.schema_name] = property }
            end
            entries = all_properties.values.sort_by(&:schema_name).map do |property|
              {property:, type: signature_type(property)}
            end
            {
              name: naming.constant_name(schema_name),
              parents: [],
              properties: entries,
              constructor_properties: entries,
              abstract: vocabulary.data_type?(schema_name),
              enum_members: enum_members(subject, schema_name)
            }
          end
        )
      end

      def signature_type(property)
        types = property.types.flat_map do |range|
          if vocabulary.descendant_of?(range, "Integer")
            ["Integer"]
          elsif vocabulary.descendant_of?(range, "Float")
            ["Float"]
          elsif vocabulary.descendant_of?(range, "Number")
            ["Numeric"]
          elsif vocabulary.descendant_of?(range, "Boolean")
            ["bool"]
          elsif vocabulary.descendant_of?(range, "Date")
            ["::Date"]
          elsif vocabulary.descendant_of?(range, "DateTime")
            ["::DateTime", "::Time"]
          elsif vocabulary.descendant_of?(range, "Time")
            ["::Time"]
          elsif vocabulary.descendant_of?(range, "Text")
            ["String"]
          elsif vocabulary.enumeration?(range)
            vocabulary.enumeration_classes.filter_map do |subject|
              descendant = vocabulary.term_name(subject.url)
              "SchemaOrg::EnumerationValue[_#{naming.constant_name(descendant)}]" if vocabulary.descendant_of?(descendant, range)
            end
          else
            ["SchemaOrg::_#{naming.constant_name(range)}"]
          end
        end.uniq
        types.empty? ? "untyped" : types.join(" | ")
      end

      def enum_members(_subject, schema_name)
        vocabulary.enumeration_members.filter_map do |member|
          next unless member.type.any? { |type| vocabulary.schema_name(type) == schema_name }

          member_name = vocabulary.term_name(member.url)
          declared = member.type.filter_map { |type| vocabulary.schema_name(type) }
          {
            constant: naming.enumeration_constant_name(member_name),
            types: declared.map { |type| naming.constant_name(type) }.sort.uniq
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
        supersedes = build_supersedes(vocabulary.properties)
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
        supersedes = class_supersedes[schema_name]
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

      def class_supersedes
        @class_supersedes ||= build_supersedes(vocabulary.classes)
      end

      def build_supersedes(subjects)
        subjects.each_with_object({}) do |candidate, result|
          next unless candidate.superseded_by

          target = vocabulary.term_name(candidate.superseded_by)
          (result[target] ||= []) << vocabulary.term_name(candidate.url)
        end.transform_values { |names| names.uniq.sort.freeze }.freeze
      end
    end
  end
end
