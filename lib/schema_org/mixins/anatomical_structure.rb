# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module AnatomicalStructure
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
          body_location: {
            schema_name: "bodyLocation",
            schema_url: "https://schema.org/bodyLocation",
            comment_lines: ["Location in the body of the anatomical structure."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          connected_to: {
            schema_name: "connectedTo",
            schema_url: "https://schema.org/connectedTo",
            comment_lines: ["Other anatomical structures to which this structure is connected."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          diagram: {
            schema_name: "diagram",
            schema_url: "https://schema.org/diagram",
            comment_lines: ["An image containing a diagram that illustrates the structure and/or its component substructures and/or connections with other structures."].freeze,
            ranges: ["ImageObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_system: {
            schema_name: "partOfSystem",
            schema_url: "https://schema.org/partOfSystem",
            comment_lines: ["The anatomical or organ system that this structure is part of."].freeze,
            ranges: ["AnatomicalSystem"].freeze,
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
          sub_structure: {
            schema_name: "subStructure",
            schema_url: "https://schema.org/subStructure",
            comment_lines: ["Component (sub-)structure(s) that comprise this anatomical structure."].freeze,
            ranges: ["AnatomicalStructure"].freeze,
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

      # Location in the body of the anatomical structure.
      def body_location
        read_property(:body_location)
      end

      # Location in the body of the anatomical structure.
      def body_location=(value)
        write_property(:body_location, value)
      end

      # Other anatomical structures to which this structure is connected.
      def connected_to
        read_property(:connected_to)
      end

      # Other anatomical structures to which this structure is connected.
      def connected_to=(value)
        write_property(:connected_to, value)
      end

      # An image containing a diagram that illustrates the structure and/or its component substructures and/or connections with other structures.
      def diagram
        read_property(:diagram)
      end

      # An image containing a diagram that illustrates the structure and/or its component substructures and/or connections with other structures.
      def diagram=(value)
        write_property(:diagram, value)
      end

      # The anatomical or organ system that this structure is part of.
      def part_of_system
        read_property(:part_of_system)
      end

      # The anatomical or organ system that this structure is part of.
      def part_of_system=(value)
        write_property(:part_of_system, value)
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

      # Component (sub-)structure(s) that comprise this anatomical structure.
      def sub_structure
        read_property(:sub_structure)
      end

      # Component (sub-)structure(s) that comprise this anatomical structure.
      def sub_structure=(value)
        write_property(:sub_structure, value)
      end
    end
  end
end
