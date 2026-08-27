# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module AnatomicalSystem
      include MedicalEntity

      def self.schema_property_definitions
        {
          associated_pathophysiology: {
            schema_name: "associatedPathophysiology",
            schema_url: "https://schema.org/associatedPathophysiology",
            comment_lines: ["If applicable, a description of the pathophysiology associated with the anatomical system, including potential abnormal changes in the mechanical, physical, and biochemical functions of the system."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          comprised_of: {
            schema_name: "comprisedOf",
            schema_url: "https://schema.org/comprisedOf",
            comment_lines: ["Specifying something physically contained by something else. Typically used here for the underlying anatomical structures, such as organs, that comprise the anatomical system."].freeze,
            ranges: ["AnatomicalStructure", "AnatomicalSystem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          related_condition: {
            schema_name: "relatedCondition",
            schema_url: "https://schema.org/relatedCondition",
            comment_lines: ["A medical condition associated with this anatomy."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          related_structure: {
            schema_name: "relatedStructure",
            schema_url: "https://schema.org/relatedStructure",
            comment_lines: ["Related anatomical structure(s) that are not part of the system but relate or connect to it, such as vascular bundles associated with an organ system."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          related_therapy: {
            schema_name: "relatedTherapy",
            schema_url: "https://schema.org/relatedTherapy",
            comment_lines: ["A medical therapy related to this anatomy."].freeze,
            ranges: ["MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # If applicable, a description of the pathophysiology associated with the anatomical system, including potential abnormal changes in the mechanical, physical, and biochemical functions of the system.
      def associated_pathophysiology
        read_property(:associated_pathophysiology)
      end

      # If applicable, a description of the pathophysiology associated with the anatomical system, including potential abnormal changes in the mechanical, physical, and biochemical functions of the system.
      def associated_pathophysiology=(value)
        write_property(:associated_pathophysiology, value)
      end

      # Specifying something physically contained by something else. Typically used here for the underlying anatomical structures, such as organs, that comprise the anatomical system.
      def comprised_of
        read_property(:comprised_of)
      end

      # Specifying something physically contained by something else. Typically used here for the underlying anatomical structures, such as organs, that comprise the anatomical system.
      def comprised_of=(value)
        write_property(:comprised_of, value)
      end

      # A medical condition associated with this anatomy.
      def related_condition
        read_property(:related_condition)
      end

      # A medical condition associated with this anatomy.
      def related_condition=(value)
        write_property(:related_condition, value)
      end

      # Related anatomical structure(s) that are not part of the system but relate or connect to it, such as vascular bundles associated with an organ system.
      def related_structure
        read_property(:related_structure)
      end

      # Related anatomical structure(s) that are not part of the system but relate or connect to it, such as vascular bundles associated with an organ system.
      def related_structure=(value)
        write_property(:related_structure, value)
      end

      # A medical therapy related to this anatomy.
      def related_therapy
        read_property(:related_therapy)
      end

      # A medical therapy related to this anatomy.
      def related_therapy=(value)
        write_property(:related_therapy, value)
      end
    end
  end
end
