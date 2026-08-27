# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module WebApplication
      include SoftwareApplication

      def self.schema_property_definitions
        {
          browser_requirements: {
            schema_name: "browserRequirements",
            schema_url: "https://schema.org/browserRequirements",
            comment_lines: ["Specifies browser requirements in human-readable text. For example, 'requires HTML5 support'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifies browser requirements in human-readable text. For example, 'requires HTML5 support'.
      def browser_requirements
        read_property(:browser_requirements)
      end

      # Specifies browser requirements in human-readable text. For example, 'requires HTML5 support'.
      def browser_requirements=(value)
        write_property(:browser_requirements, value)
      end
    end
  end
end
