module SchemaOrg
  module Codegen
    class Orchestrator
      def initialize(generator:, manifest:, vocabulary:, schema_version: Models::SchemaVersion.current)
        @generator = generator
        @manifest = manifest
        @vocabulary = vocabulary
        @schema_version = schema_version
      end

      def orchestrate
        generate_files
        manifest.stale_files.each { |path| manifest.remove_stale(path) }
        manifest.save
      end

      private

      attr_reader :generator, :manifest, :vocabulary, :schema_version

      def generate_files
        generator.generate schema_version
        properties = build_properties
        vocabulary.classes.each do |subject|
          name = vocabulary.term_name(subject.url)
          generate_mixin(subject, properties[name])
          generate_type(subject, properties[name])
        end
      end

      def build_properties
        supersedes = vocabulary.properties.each_with_object({}) do |property, result|
          next unless property.superseded_by

          result[vocabulary.term_name(property.superseded_by)] = vocabulary.term_name(property.url).underscore.to_sym
        end
        properties = Hash.new { |hash, key| hash[key] = {} }
        vocabulary.properties.each do |subject|
          schema_name = vocabulary.term_name(subject.url)
          property = Models::Property.new(
            comment_lines: subject.comment_lines,
            inverse_of: subject.inverse_of,
            name: schema_name.underscore.to_sym,
            schema_name: schema_name,
            schema_url: subject.url,
            superseded_by: subject.superseded_by,
            supersedes: supersedes[schema_name],
            types: vocabulary.property_ranges(subject),
          )
          vocabulary.property_domains(subject).each { |domain| properties[domain][schema_name] ||= property }
        end
        properties.transform_values { |values| values.values.sort_by(&:schema_name) }
      end

      def generate_mixin(subject, properties)
        generator.generate Models::Mixin.new(
          name: vocabulary.term_name(subject.url).to_sym,
          parents: vocabulary.direct_parents(subject).map(&:to_sym),
          properties: properties || [],
        )
      end

      def generate_type(subject, _properties)
        name = vocabulary.term_name(subject.url)
        superseded_by = subject.superseded_by && vocabulary.term_name(subject.superseded_by)
        supersedes = vocabulary.classes.find { |candidate| candidate.superseded_by == name.to_sym }&.label
        members = vocabulary.enumeration_members.select do |member|
          member.type.any? { |type| vocabulary.schema_name(type) == name }
        end.sort_by { |member| vocabulary.term_name(member.url) }
        generator.generate Models::Type.new(
          comment_lines: subject.comment_lines,
          name: name.to_sym,
          schema_types: [name] + vocabulary.ancestry(name),
          superseded_by: superseded_by,
          supersedes: supersedes,
          url: subject.url,
          abstract: vocabulary.data_type_classes.any? { |data_type| vocabulary.term_name(data_type.url) == name },
          enum_members: members.map do |member|
            declared = member.type.filter_map { |type| vocabulary.schema_name(type) }
            [vocabulary.term_name(member.url).underscore.upcase, vocabulary.term_name(member.url), declared]
          end,
        )
      end
    end
  end
end
