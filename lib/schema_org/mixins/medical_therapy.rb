# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalTherapy
      include TherapeuticProcedure

      def self.schema_property_definitions
        {
          contraindication: {
            schema_name: "contraindication",
            schema_url: "https://schema.org/contraindication",
            comment_lines: ["A contraindication for this therapy."].freeze,
            ranges: ["MedicalContraindication", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duplicate_therapy: {
            schema_name: "duplicateTherapy",
            schema_url: "https://schema.org/duplicateTherapy",
            comment_lines: ["A therapy that duplicates or overlaps this one."].freeze,
            ranges: ["MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          serious_adverse_outcome: {
            schema_name: "seriousAdverseOutcome",
            schema_url: "https://schema.org/seriousAdverseOutcome",
            comment_lines: ["A possible serious complication and/or serious side effect of this therapy. Serious adverse outcomes include those that are life-threatening; result in death, disability, or permanent damage; require hospitalization or prolong existing hospitalization; cause congenital anomalies or birth defects; or jeopardize the patient and may require medical or surgical intervention to prevent one of the outcomes in this definition."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A contraindication for this therapy.
      def contraindication
        read_property(:contraindication)
      end

      # A contraindication for this therapy.
      def contraindication=(value)
        write_property(:contraindication, value)
      end

      # A therapy that duplicates or overlaps this one.
      def duplicate_therapy
        read_property(:duplicate_therapy)
      end

      # A therapy that duplicates or overlaps this one.
      def duplicate_therapy=(value)
        write_property(:duplicate_therapy, value)
      end

      # A possible serious complication and/or serious side effect of this therapy. Serious adverse outcomes include those that are life-threatening; result in death, disability, or permanent damage; require hospitalization or prolong existing hospitalization; cause congenital anomalies or birth defects; or jeopardize the patient and may require medical or surgical intervention to prevent one of the outcomes in this definition.
      def serious_adverse_outcome
        read_property(:serious_adverse_outcome)
      end

      # A possible serious complication and/or serious side effect of this therapy. Serious adverse outcomes include those that are life-threatening; result in death, disability, or permanent damage; require hospitalization or prolong existing hospitalization; cause congenital anomalies or birth defects; or jeopardize the patient and may require medical or surgical intervention to prevent one of the outcomes in this definition.
      def serious_adverse_outcome=(value)
        write_property(:serious_adverse_outcome, value)
      end
    end
  end
end
