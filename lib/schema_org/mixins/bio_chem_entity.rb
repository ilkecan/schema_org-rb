# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module BioChemEntity
      include Thing

      def self.schema_property_definitions
        {
          associated_disease: {
            schema_name: "associatedDisease",
            schema_url: "https://schema.org/associatedDisease",
            comment_lines: ["Disease associated to this BioChemEntity. Such disease can be a MedicalCondition or a URL. If you want to add an evidence supporting the association, please use PropertyValue."].freeze,
            ranges: ["MedicalCondition", "PropertyValue", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bio_chem_interaction: {
            schema_name: "bioChemInteraction",
            schema_url: "https://schema.org/bioChemInteraction",
            comment_lines: ["A BioChemEntity that is known to interact with this item."].freeze,
            ranges: ["BioChemEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bio_chem_similarity: {
            schema_name: "bioChemSimilarity",
            schema_url: "https://schema.org/bioChemSimilarity",
            comment_lines: ["A similar BioChemEntity, e.g., obtained by fingerprint similarity algorithms."].freeze,
            ranges: ["BioChemEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          biological_role: {
            schema_name: "biologicalRole",
            schema_url: "https://schema.org/biologicalRole",
            comment_lines: ["A role played by the BioChemEntity within a biological context."].freeze,
            ranges: ["DefinedTerm"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          funding: {
            schema_name: "funding",
            schema_url: "https://schema.org/funding",
            comment_lines: ["A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]]."].freeze,
            ranges: ["Grant"].freeze,
            external_ranges: [].freeze,
            inverse_of: "fundedItem",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_bio_chem_entity_part: {
            schema_name: "hasBioChemEntityPart",
            schema_url: "https://schema.org/hasBioChemEntityPart",
            comment_lines: ["Indicates a BioChemEntity that (in some sense) has this BioChemEntity as a part."].freeze,
            ranges: ["BioChemEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: "isPartOfBioChemEntity",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_molecular_function: {
            schema_name: "hasMolecularFunction",
            schema_url: "https://schema.org/hasMolecularFunction",
            comment_lines: ["Molecular function performed by this BioChemEntity; please use PropertyValue if you want to include any evidence."].freeze,
            ranges: ["DefinedTerm", "PropertyValue", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_representation: {
            schema_name: "hasRepresentation",
            schema_url: "https://schema.org/hasRepresentation",
            comment_lines: ["A common representation such as a protein sequence or chemical structure for this entity. For images use schema.org/image."].freeze,
            ranges: ["PropertyValue", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_encoded_by_bio_chem_entity: {
            schema_name: "isEncodedByBioChemEntity",
            schema_url: "https://schema.org/isEncodedByBioChemEntity",
            comment_lines: ["Another BioChemEntity encoding by this one."].freeze,
            ranges: ["Gene"].freeze,
            external_ranges: [].freeze,
            inverse_of: "encodesBioChemEntity",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_involved_in_biological_process: {
            schema_name: "isInvolvedInBiologicalProcess",
            schema_url: "https://schema.org/isInvolvedInBiologicalProcess",
            comment_lines: ["Biological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence."].freeze,
            ranges: ["DefinedTerm", "PropertyValue", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_located_in_subcellular_location: {
            schema_name: "isLocatedInSubcellularLocation",
            schema_url: "https://schema.org/isLocatedInSubcellularLocation",
            comment_lines: ["Subcellular location where this BioChemEntity is located; please use PropertyValue if you want to include any evidence."].freeze,
            ranges: ["DefinedTerm", "PropertyValue", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_part_of_bio_chem_entity: {
            schema_name: "isPartOfBioChemEntity",
            schema_url: "https://schema.org/isPartOfBioChemEntity",
            comment_lines: ["Indicates a BioChemEntity that is (in some sense) a part of this BioChemEntity."].freeze,
            ranges: ["BioChemEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: "hasBioChemEntityPart",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          taxonomic_range: {
            schema_name: "taxonomicRange",
            schema_url: "https://schema.org/taxonomicRange",
            comment_lines: ["The taxonomic grouping of the organism that expresses, encodes, or in some way related to the BioChemEntity."].freeze,
            ranges: ["DefinedTerm", "Taxon", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Disease associated to this BioChemEntity. Such disease can be a MedicalCondition or a URL. If you want to add an evidence supporting the association, please use PropertyValue.
      def associated_disease
        read_property(:associated_disease)
      end

      # Disease associated to this BioChemEntity. Such disease can be a MedicalCondition or a URL. If you want to add an evidence supporting the association, please use PropertyValue.
      def associated_disease=(value)
        write_property(:associated_disease, value)
      end

      # A BioChemEntity that is known to interact with this item.
      def bio_chem_interaction
        read_property(:bio_chem_interaction)
      end

      # A BioChemEntity that is known to interact with this item.
      def bio_chem_interaction=(value)
        write_property(:bio_chem_interaction, value)
      end

      # A similar BioChemEntity, e.g., obtained by fingerprint similarity algorithms.
      def bio_chem_similarity
        read_property(:bio_chem_similarity)
      end

      # A similar BioChemEntity, e.g., obtained by fingerprint similarity algorithms.
      def bio_chem_similarity=(value)
        write_property(:bio_chem_similarity, value)
      end

      # A role played by the BioChemEntity within a biological context.
      def biological_role
        read_property(:biological_role)
      end

      # A role played by the BioChemEntity within a biological context.
      def biological_role=(value)
        write_property(:biological_role, value)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding
        read_property(:funding)
      end

      # A [[Grant]] that directly or indirectly provide funding or sponsorship for this item. See also [[ownershipFundingInfo]].
      # Inverse-property: `fundedItem`.
      def funding=(value)
        write_property(:funding, value)
      end

      # Indicates a BioChemEntity that (in some sense) has this BioChemEntity as a part.
      # Inverse-property: `isPartOfBioChemEntity`.
      def has_bio_chem_entity_part
        read_property(:has_bio_chem_entity_part)
      end

      # Indicates a BioChemEntity that (in some sense) has this BioChemEntity as a part.
      # Inverse-property: `isPartOfBioChemEntity`.
      def has_bio_chem_entity_part=(value)
        write_property(:has_bio_chem_entity_part, value)
      end

      # Molecular function performed by this BioChemEntity; please use PropertyValue if you want to include any evidence.
      def has_molecular_function
        read_property(:has_molecular_function)
      end

      # Molecular function performed by this BioChemEntity; please use PropertyValue if you want to include any evidence.
      def has_molecular_function=(value)
        write_property(:has_molecular_function, value)
      end

      # A common representation such as a protein sequence or chemical structure for this entity. For images use schema.org/image.
      def has_representation
        read_property(:has_representation)
      end

      # A common representation such as a protein sequence or chemical structure for this entity. For images use schema.org/image.
      def has_representation=(value)
        write_property(:has_representation, value)
      end

      # Another BioChemEntity encoding by this one.
      # Inverse-property: `encodesBioChemEntity`.
      def is_encoded_by_bio_chem_entity
        read_property(:is_encoded_by_bio_chem_entity)
      end

      # Another BioChemEntity encoding by this one.
      # Inverse-property: `encodesBioChemEntity`.
      def is_encoded_by_bio_chem_entity=(value)
        write_property(:is_encoded_by_bio_chem_entity, value)
      end

      # Biological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence.
      def is_involved_in_biological_process
        read_property(:is_involved_in_biological_process)
      end

      # Biological process this BioChemEntity is involved in; please use PropertyValue if you want to include any evidence.
      def is_involved_in_biological_process=(value)
        write_property(:is_involved_in_biological_process, value)
      end

      # Subcellular location where this BioChemEntity is located; please use PropertyValue if you want to include any evidence.
      def is_located_in_subcellular_location
        read_property(:is_located_in_subcellular_location)
      end

      # Subcellular location where this BioChemEntity is located; please use PropertyValue if you want to include any evidence.
      def is_located_in_subcellular_location=(value)
        write_property(:is_located_in_subcellular_location, value)
      end

      # Indicates a BioChemEntity that is (in some sense) a part of this BioChemEntity.
      # Inverse-property: `hasBioChemEntityPart`.
      def is_part_of_bio_chem_entity
        read_property(:is_part_of_bio_chem_entity)
      end

      # Indicates a BioChemEntity that is (in some sense) a part of this BioChemEntity.
      # Inverse-property: `hasBioChemEntityPart`.
      def is_part_of_bio_chem_entity=(value)
        write_property(:is_part_of_bio_chem_entity, value)
      end

      # The taxonomic grouping of the organism that expresses, encodes, or in some way related to the BioChemEntity.
      def taxonomic_range
        read_property(:taxonomic_range)
      end

      # The taxonomic grouping of the organism that expresses, encodes, or in some way related to the BioChemEntity.
      def taxonomic_range=(value)
        write_property(:taxonomic_range, value)
      end
    end
  end
end
