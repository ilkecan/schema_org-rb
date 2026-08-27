# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalSignOrSymptom
      include MedicalCondition

      def self.schema_property_definitions
        {
          possible_treatment: {
            schema_name: "possibleTreatment",
            schema_url: "https://schema.org/possibleTreatment",
            comment_lines: ["A possible treatment to address this condition, sign or symptom."].freeze,
            ranges: ["Drug", "DrugClass", "LifestyleModification", "MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A possible treatment to address this condition, sign or symptom.
      def possible_treatment
        read_property(:possible_treatment)
      end

      # A possible treatment to address this condition, sign or symptom.
      def possible_treatment=(value)
        write_property(:possible_treatment, value)
      end
    end
  end
end
