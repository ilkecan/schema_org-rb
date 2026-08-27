# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Patient
      include MedicalAudience
      include Person

      def self.schema_property_definitions
        {
          diagnosis: {
            schema_name: "diagnosis",
            schema_url: "https://schema.org/diagnosis",
            comment_lines: ["One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          drug: {
            schema_name: "drug",
            schema_url: "https://schema.org/drug",
            comment_lines: ["Specifying a drug or medicine used in a medication procedure."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_condition: {
            schema_name: "healthCondition",
            schema_url: "https://schema.org/healthCondition",
            comment_lines: ["Specifying the health condition(s) of a patient, medical study, or other target audience."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process.
      def diagnosis
        read_property(:diagnosis)
      end

      # One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process.
      def diagnosis=(value)
        write_property(:diagnosis, value)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug
        read_property(:drug)
      end

      # Specifying a drug or medicine used in a medication procedure.
      def drug=(value)
        write_property(:drug, value)
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition
        read_property(:health_condition)
      end

      # Specifying the health condition(s) of a patient, medical study, or other target audience.
      def health_condition=(value)
        write_property(:health_condition, value)
      end
    end
  end
end
