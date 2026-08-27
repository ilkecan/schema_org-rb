# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MolecularEntity
      include BioChemEntity

      def self.schema_property_definitions
        {
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
          in_ch_i: {
            schema_name: "inChI",
            schema_url: "https://schema.org/inChI",
            comment_lines: ["Non-proprietary identifier for molecular entity that can be used in printed and electronic data sources thus enabling easier linking of diverse data compilations."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_ch_i_key: {
            schema_name: "inChIKey",
            schema_url: "https://schema.org/inChIKey",
            comment_lines: ["InChIKey is a hashed version of the full InChI (using the SHA-256 algorithm)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          iupac_name: {
            schema_name: "iupacName",
            schema_url: "https://schema.org/iupacName",
            comment_lines: ["Systematic method of naming chemical compounds as recommended by the International Union of Pure and Applied Chemistry (IUPAC)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          molecular_formula: {
            schema_name: "molecularFormula",
            schema_url: "https://schema.org/molecularFormula",
            comment_lines: ["The empirical formula is the simplest whole number ratio of all the atoms in a molecule."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          molecular_weight: {
            schema_name: "molecularWeight",
            schema_url: "https://schema.org/molecularWeight",
            comment_lines: ["This is the molecular weight of the entity being described, not of the parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;', for example '12 amu' or as '&lt;QuantitativeValue&gt;."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          monoisotopic_molecular_weight: {
            schema_name: "monoisotopicMolecularWeight",
            schema_url: "https://schema.org/monoisotopicMolecularWeight",
            comment_lines: ["The monoisotopic mass is the sum of the masses of the atoms in a molecule using the unbound, ground-state, rest mass of the principal (most abundant) isotope for each element instead of the isotopic average mass. Please include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example '770.230488 g/mol' or as '&lt;QuantitativeValue&gt;."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
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
          }.freeze,
          smiles: {
            schema_name: "smiles",
            schema_url: "https://schema.org/smiles",
            comment_lines: ["A specification in form of a line notation for describing the structure of chemical species using short ASCII strings.  Double bond stereochemistry \\ indicators may need to be escaped in the string in formats where the backslash is an escape character."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A role played by the BioChemEntity within a chemical context.
      def chemical_role
        read_property(:chemical_role)
      end

      # A role played by the BioChemEntity within a chemical context.
      def chemical_role=(value)
        write_property(:chemical_role, value)
      end

      # Non-proprietary identifier for molecular entity that can be used in printed and electronic data sources thus enabling easier linking of diverse data compilations.
      def in_ch_i
        read_property(:in_ch_i)
      end

      # Non-proprietary identifier for molecular entity that can be used in printed and electronic data sources thus enabling easier linking of diverse data compilations.
      def in_ch_i=(value)
        write_property(:in_ch_i, value)
      end

      # InChIKey is a hashed version of the full InChI (using the SHA-256 algorithm).
      def in_ch_i_key
        read_property(:in_ch_i_key)
      end

      # InChIKey is a hashed version of the full InChI (using the SHA-256 algorithm).
      def in_ch_i_key=(value)
        write_property(:in_ch_i_key, value)
      end

      # Systematic method of naming chemical compounds as recommended by the International Union of Pure and Applied Chemistry (IUPAC).
      def iupac_name
        read_property(:iupac_name)
      end

      # Systematic method of naming chemical compounds as recommended by the International Union of Pure and Applied Chemistry (IUPAC).
      def iupac_name=(value)
        write_property(:iupac_name, value)
      end

      # The empirical formula is the simplest whole number ratio of all the atoms in a molecule.
      def molecular_formula
        read_property(:molecular_formula)
      end

      # The empirical formula is the simplest whole number ratio of all the atoms in a molecule.
      def molecular_formula=(value)
        write_property(:molecular_formula, value)
      end

      # This is the molecular weight of the entity being described, not of the parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;', for example '12 amu' or as '&lt;QuantitativeValue&gt;.
      def molecular_weight
        read_property(:molecular_weight)
      end

      # This is the molecular weight of the entity being described, not of the parent. Units should be included in the form '&lt;Number&gt; &lt;unit&gt;', for example '12 amu' or as '&lt;QuantitativeValue&gt;.
      def molecular_weight=(value)
        write_property(:molecular_weight, value)
      end

      # The monoisotopic mass is the sum of the masses of the atoms in a molecule using the unbound, ground-state, rest mass of the principal (most abundant) isotope for each element instead of the isotopic average mass. Please include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example '770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.
      def monoisotopic_molecular_weight
        read_property(:monoisotopic_molecular_weight)
      end

      # The monoisotopic mass is the sum of the masses of the atoms in a molecule using the unbound, ground-state, rest mass of the principal (most abundant) isotope for each element instead of the isotopic average mass. Please include the units in the form '&lt;Number&gt; &lt;unit&gt;', for example '770.230488 g/mol' or as '&lt;QuantitativeValue&gt;.
      def monoisotopic_molecular_weight=(value)
        write_property(:monoisotopic_molecular_weight, value)
      end

      # Intended use of the BioChemEntity by humans.
      def potential_use
        read_property(:potential_use)
      end

      # Intended use of the BioChemEntity by humans.
      def potential_use=(value)
        write_property(:potential_use, value)
      end

      # A specification in form of a line notation for describing the structure of chemical species using short ASCII strings.  Double bond stereochemistry \ indicators may need to be escaped in the string in formats where the backslash is an escape character.
      def smiles
        read_property(:smiles)
      end

      # A specification in form of a line notation for describing the structure of chemical species using short ASCII strings.  Double bond stereochemistry \ indicators may need to be escaped in the string in formats where the backslash is an escape character.
      def smiles=(value)
        write_property(:smiles, value)
      end
    end
  end
end
