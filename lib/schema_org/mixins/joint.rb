# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Joint
      include AnatomicalStructure

      def self.schema_property_definitions
        {
          biomechnical_class: {
            schema_name: "biomechnicalClass",
            schema_url: "https://schema.org/biomechnicalClass",
            comment_lines: ["The biomechanical properties of the bone."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          functional_class: {
            schema_name: "functionalClass",
            schema_url: "https://schema.org/functionalClass",
            comment_lines: ["The degree of mobility the joint allows."].freeze,
            ranges: ["MedicalEntity", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          structural_class: {
            schema_name: "structuralClass",
            schema_url: "https://schema.org/structuralClass",
            comment_lines: ["The name given to how bone physically connects to each other."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The biomechanical properties of the bone.
      def biomechnical_class
        read_property(:biomechnical_class)
      end

      # The biomechanical properties of the bone.
      def biomechnical_class=(value)
        write_property(:biomechnical_class, value)
      end

      # The degree of mobility the joint allows.
      def functional_class
        read_property(:functional_class)
      end

      # The degree of mobility the joint allows.
      def functional_class=(value)
        write_property(:functional_class, value)
      end

      # The name given to how bone physically connects to each other.
      def structural_class
        read_property(:structural_class)
      end

      # The name given to how bone physically connects to each other.
      def structural_class=(value)
        write_property(:structural_class, value)
      end
    end
  end
end
