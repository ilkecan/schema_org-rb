# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Protein
      include BioChemEntity

      def self.schema_property_definitions
        {
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
