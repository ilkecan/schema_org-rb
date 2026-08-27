# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Taxon
      include Thing

      def self.schema_property_definitions
        {
          child_taxon: {
            schema_name: "childTaxon",
            schema_url: "https://schema.org/childTaxon",
            comment_lines: ["Closest child taxa of the taxon in question."].freeze,
            ranges: ["Taxon", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: "parentTaxon",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_defined_term: {
            schema_name: "hasDefinedTerm",
            schema_url: "https://schema.org/hasDefinedTerm",
            comment_lines: ["A Defined Term contained in this term set."].freeze,
            ranges: ["DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          parent_taxon: {
            schema_name: "parentTaxon",
            schema_url: "https://schema.org/parentTaxon",
            comment_lines: ["Closest parent taxon of the taxon in question."].freeze,
            ranges: ["Taxon", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: "childTaxon",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          taxon_rank: {
            schema_name: "taxonRank",
            schema_url: "https://schema.org/taxonRank",
            comment_lines: ["The taxonomic rank of this taxon given preferably as a URI from a controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or equivalent Wikidata URIs."].freeze,
            ranges: ["PropertyValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Closest child taxa of the taxon in question.
      # Inverse-property: `parentTaxon`.
      def child_taxon
        read_property(:child_taxon)
      end

      # Closest child taxa of the taxon in question.
      # Inverse-property: `parentTaxon`.
      def child_taxon=(value)
        write_property(:child_taxon, value)
      end

      # A Defined Term contained in this term set.
      def has_defined_term
        read_property(:has_defined_term)
      end

      # A Defined Term contained in this term set.
      def has_defined_term=(value)
        write_property(:has_defined_term, value)
      end

      # Closest parent taxon of the taxon in question.
      # Inverse-property: `childTaxon`.
      def parent_taxon
        read_property(:parent_taxon)
      end

      # Closest parent taxon of the taxon in question.
      # Inverse-property: `childTaxon`.
      def parent_taxon=(value)
        write_property(:parent_taxon, value)
      end

      # The taxonomic rank of this taxon given preferably as a URI from a controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or equivalent Wikidata URIs.
      def taxon_rank
        read_property(:taxon_rank)
      end

      # The taxonomic rank of this taxon given preferably as a URI from a controlled vocabulary – typically the ranks from TDWG TaxonRank ontology or equivalent Wikidata URIs.
      def taxon_rank=(value)
        write_property(:taxon_rank, value)
      end
    end
  end
end
