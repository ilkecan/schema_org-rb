# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module TechArticle
      include Article

      def self.schema_property_definitions
        {
          dependencies: {
            schema_name: "dependencies",
            schema_url: "https://schema.org/dependencies",
            comment_lines: ["Prerequisites needed to fulfill steps in article."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          proficiency_level: {
            schema_name: "proficiencyLevel",
            schema_url: "https://schema.org/proficiencyLevel",
            comment_lines: ["Proficiency needed for this content; expected values: 'Beginner', 'Expert'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Prerequisites needed to fulfill steps in article.
      def dependencies
        read_property(:dependencies)
      end

      # Prerequisites needed to fulfill steps in article.
      def dependencies=(value)
        write_property(:dependencies, value)
      end

      # Proficiency needed for this content; expected values: 'Beginner', 'Expert'.
      def proficiency_level
        read_property(:proficiency_level)
      end

      # Proficiency needed for this content; expected values: 'Beginner', 'Expert'.
      def proficiency_level=(value)
        write_property(:proficiency_level, value)
      end
    end
  end
end
