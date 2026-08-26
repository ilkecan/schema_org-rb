# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalCode
      include CategoryCode
      include MedicalIntangible

      def self.schema_property_definitions
        {
          code_value: {
            schema_name: "codeValue",
            schema_url: "https://schema.org/codeValue",
            comment_lines: ["A short textual code that uniquely identifies the value."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          coding_system: {
            schema_name: "codingSystem",
            schema_url: "https://schema.org/codingSystem",
            comment_lines: ["The coding system, e.g. 'ICD-10'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A short textual code that uniquely identifies the value.
      def code_value
        read_property(:code_value)
      end

      # A short textual code that uniquely identifies the value.
      def code_value=(value)
        write_property(:code_value, value)
      end

      # The coding system, e.g. 'ICD-10'.
      def coding_system
        read_property(:coding_system)
      end

      # The coding system, e.g. 'ICD-10'.
      def coding_system=(value)
        write_property(:coding_system, value)
      end
    end
  end
end
