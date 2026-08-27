# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module SuperficialAnatomy
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
          related_anatomy: {
            schema_name: "relatedAnatomy",
            schema_url: "https://schema.org/relatedAnatomy",
            comment_lines: ["Anatomical systems or structures that relate to the superficial anatomy."].freeze,
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
          related_therapy: {
            schema_name: "relatedTherapy",
            schema_url: "https://schema.org/relatedTherapy",
            comment_lines: ["A medical therapy related to this anatomy."].freeze,
            ranges: ["MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          significance: {
            schema_name: "significance",
            schema_url: "https://schema.org/significance",
            comment_lines: ["The significance associated with the superficial anatomy; as an example, how characteristics of the superficial anatomy can suggest underlying medical conditions or courses of treatment."].freeze,
            ranges: ["Text"].freeze,
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

      # Anatomical systems or structures that relate to the superficial anatomy.
      def related_anatomy
        read_property(:related_anatomy)
      end

      # Anatomical systems or structures that relate to the superficial anatomy.
      def related_anatomy=(value)
        write_property(:related_anatomy, value)
      end

      # A medical condition associated with this anatomy.
      def related_condition
        read_property(:related_condition)
      end

      # A medical condition associated with this anatomy.
      def related_condition=(value)
        write_property(:related_condition, value)
      end

      # A medical therapy related to this anatomy.
      def related_therapy
        read_property(:related_therapy)
      end

      # A medical therapy related to this anatomy.
      def related_therapy=(value)
        write_property(:related_therapy, value)
      end

      # The significance associated with the superficial anatomy; as an example, how characteristics of the superficial anatomy can suggest underlying medical conditions or courses of treatment.
      def significance
        read_property(:significance)
      end

      # The significance associated with the superficial anatomy; as an example, how characteristics of the superficial anatomy can suggest underlying medical conditions or courses of treatment.
      def significance=(value)
        write_property(:significance, value)
      end
    end
  end
end
