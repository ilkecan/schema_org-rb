# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DiagnosticLab
      include MedicalOrganization

      def self.schema_property_definitions
        {
          available_test: {
            schema_name: "availableTest",
            schema_url: "https://schema.org/availableTest",
            comment_lines: ["A diagnostic test or procedure offered by this lab."].freeze,
            ranges: ["MedicalTest"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A diagnostic test or procedure offered by this lab.
      def available_test
        read_property(:available_test)
      end

      # A diagnostic test or procedure offered by this lab.
      def available_test=(value)
        write_property(:available_test, value)
      end
    end
  end
end
