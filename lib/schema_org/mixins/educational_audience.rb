# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module EducationalAudience
      include Audience

      def self.schema_property_definitions
        {
          educational_role: {
            schema_name: "educationalRole",
            schema_url: "https://schema.org/educationalRole",
            comment_lines: ["An educationalRole of an EducationalAudience."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An educationalRole of an EducationalAudience.
      def educational_role
        read_property(:educational_role)
      end

      # An educationalRole of an EducationalAudience.
      def educational_role=(value)
        write_property(:educational_role, value)
      end
    end
  end
end
