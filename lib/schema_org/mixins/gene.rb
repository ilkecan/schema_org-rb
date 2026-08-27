# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Gene
      include BioChemEntity

      def self.schema_property_definitions
        {
          alternative_of: {
            schema_name: "alternativeOf",
            schema_url: "https://schema.org/alternativeOf",
            comment_lines: ["Another gene which is a variation of this one."].freeze,
            ranges: ["Gene"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          encodes_bio_chem_entity: {
            schema_name: "encodesBioChemEntity",
            schema_url: "https://schema.org/encodesBioChemEntity",
            comment_lines: ["Another BioChemEntity encoded by this one."].freeze,
            ranges: ["BioChemEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: "isEncodedByBioChemEntity",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          expressed_in: {
            schema_name: "expressedIn",
            schema_url: "https://schema.org/expressedIn",
            comment_lines: ["Tissue, organ, biological sample, etc in which activity of this gene has been observed experimentally. For example brain, digestive system."].freeze,
            ranges: ["AnatomicalStructure", "AnatomicalSystem", "BioChemEntity", "DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_bio_polymer_sequence: {
            schema_name: "hasBioPolymerSequence",
            schema_url: "https://schema.org/hasBioPolymerSequence",
            comment_lines: ["A symbolic representation of a BioChemEntity. For example, a nucleotide sequence of a Gene or an amino acid sequence of a Protein."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Another gene which is a variation of this one.
      def alternative_of
        read_property(:alternative_of)
      end

      # Another gene which is a variation of this one.
      def alternative_of=(value)
        write_property(:alternative_of, value)
      end

      # Another BioChemEntity encoded by this one.
      # Inverse-property: `isEncodedByBioChemEntity`.
      def encodes_bio_chem_entity
        read_property(:encodes_bio_chem_entity)
      end

      # Another BioChemEntity encoded by this one.
      # Inverse-property: `isEncodedByBioChemEntity`.
      def encodes_bio_chem_entity=(value)
        write_property(:encodes_bio_chem_entity, value)
      end

      # Tissue, organ, biological sample, etc in which activity of this gene has been observed experimentally. For example brain, digestive system.
      def expressed_in
        read_property(:expressed_in)
      end

      # Tissue, organ, biological sample, etc in which activity of this gene has been observed experimentally. For example brain, digestive system.
      def expressed_in=(value)
        write_property(:expressed_in, value)
      end

      # A symbolic representation of a BioChemEntity. For example, a nucleotide sequence of a Gene or an amino acid sequence of a Protein.
      def has_bio_polymer_sequence
        read_property(:has_bio_polymer_sequence)
      end

      # A symbolic representation of a BioChemEntity. For example, a nucleotide sequence of a Gene or an amino acid sequence of a Protein.
      def has_bio_polymer_sequence=(value)
        write_property(:has_bio_polymer_sequence, value)
      end
    end
  end
end
