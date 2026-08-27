# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MedicalDevice
      include MedicalEntity

      def self.schema_property_definitions
        {
          adverse_outcome: {
            schema_name: "adverseOutcome",
            schema_url: "https://schema.org/adverseOutcome",
            comment_lines: ["A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
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
          post_op: {
            schema_name: "postOp",
            schema_url: "https://schema.org/postOp",
            comment_lines: ["A description of the postoperative procedures, care, and/or followups for this device."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          pre_op: {
            schema_name: "preOp",
            schema_url: "https://schema.org/preOp",
            comment_lines: ["A description of the workup, testing, and other preparations required before implanting this device."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          procedure: {
            schema_name: "procedure",
            schema_url: "https://schema.org/procedure",
            comment_lines: ["A description of the procedure involved in setting up, using, and/or installing the device."].freeze,
            ranges: ["Text"].freeze,
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

      # A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead.
      def adverse_outcome
        read_property(:adverse_outcome)
      end

      # A possible complication and/or side effect of this therapy. If it is known that an adverse outcome is serious (resulting in death, disability, or permanent damage; requiring hospitalization; or otherwise life-threatening or requiring immediate medical attention), tag it as a seriousAdverseOutcome instead.
      def adverse_outcome=(value)
        write_property(:adverse_outcome, value)
      end

      # A contraindication for this therapy.
      def contraindication
        read_property(:contraindication)
      end

      # A contraindication for this therapy.
      def contraindication=(value)
        write_property(:contraindication, value)
      end

      # A description of the postoperative procedures, care, and/or followups for this device.
      def post_op
        read_property(:post_op)
      end

      # A description of the postoperative procedures, care, and/or followups for this device.
      def post_op=(value)
        write_property(:post_op, value)
      end

      # A description of the workup, testing, and other preparations required before implanting this device.
      def pre_op
        read_property(:pre_op)
      end

      # A description of the workup, testing, and other preparations required before implanting this device.
      def pre_op=(value)
        write_property(:pre_op, value)
      end

      # A description of the procedure involved in setting up, using, and/or installing the device.
      def procedure
        read_property(:procedure)
      end

      # A description of the procedure involved in setting up, using, and/or installing the device.
      def procedure=(value)
        write_property(:procedure, value)
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
