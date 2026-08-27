# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module ChemicalSubstance
      include BioChemEntity

      def self.schema_property_definitions
        {
          chemical_composition: {
            schema_name: "chemicalComposition",
            schema_url: "https://schema.org/chemicalComposition",
            comment_lines: ["The chemical composition describes the identity and relative ratio of the chemical elements that make up the substance."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          chemical_role: {
            schema_name: "chemicalRole",
            schema_url: "https://schema.org/chemicalRole",
            comment_lines: ["A role played by the BioChemEntity within a chemical context."].freeze,
            ranges: ["DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          potential_use: {
            schema_name: "potentialUse",
            schema_url: "https://schema.org/potentialUse",
            comment_lines: ["Intended use of the BioChemEntity by humans."].freeze,
            ranges: ["DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The chemical composition describes the identity and relative ratio of the chemical elements that make up the substance.
      def chemical_composition
        read_property(:chemical_composition)
      end

      # The chemical composition describes the identity and relative ratio of the chemical elements that make up the substance.
      def chemical_composition=(value)
        write_property(:chemical_composition, value)
      end

      # A role played by the BioChemEntity within a chemical context.
      def chemical_role
        read_property(:chemical_role)
      end

      # A role played by the BioChemEntity within a chemical context.
      def chemical_role=(value)
        write_property(:chemical_role, value)
      end

      # Intended use of the BioChemEntity by humans.
      def potential_use
        read_property(:potential_use)
      end

      # Intended use of the BioChemEntity by humans.
      def potential_use=(value)
        write_property(:potential_use, value)
      end
    end
  end
end
