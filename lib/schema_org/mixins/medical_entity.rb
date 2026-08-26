# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalEntity
      include Thing

      def self.schema_property_definitions
        {
          code: {
            schema_name: "code",
            schema_url: "https://schema.org/code",
            comment_lines: ["A medical code for the entity, taken from a controlled vocabulary or ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc."].freeze,
            ranges: ["MedicalCode"].freeze,
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
          guideline: {
            schema_name: "guideline",
            schema_url: "https://schema.org/guideline",
            comment_lines: ["A medical guideline related to this entity."].freeze,
            ranges: ["MedicalGuideline"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          legal_status: {
            schema_name: "legalStatus",
            schema_url: "https://schema.org/legalStatus",
            comment_lines: ["The drug or supplement's legal status, including any controlled substance schedules that apply."].freeze,
            ranges: ["DrugLegalStatus", "MedicalEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          medicine_system: {
            schema_name: "medicineSystem",
            schema_url: "https://schema.org/medicineSystem",
            comment_lines: ["The system of medicine that includes this MedicalEntity, for example 'evidence-based', 'homeopathic', 'chiropractic', etc."].freeze,
            ranges: ["MedicineSystem"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recognizing_authority: {
            schema_name: "recognizingAuthority",
            schema_url: "https://schema.org/recognizingAuthority",
            comment_lines: ["If applicable, the organization that officially recognizes this entity as part of its endorsed system of medicine."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          relevant_specialty: {
            schema_name: "relevantSpecialty",
            schema_url: "https://schema.org/relevantSpecialty",
            comment_lines: ["If applicable, a medical specialty in which this entity is relevant."].freeze,
            ranges: ["MedicalSpecialty"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          study: {
            schema_name: "study",
            schema_url: "https://schema.org/study",
            comment_lines: ["A medical study or trial related to this entity."].freeze,
            ranges: ["MedicalStudy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A medical code for the entity, taken from a controlled vocabulary or ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
      def code
        read_property(:code)
      end

      # A medical code for the entity, taken from a controlled vocabulary or ontology such as ICD-9, DiseasesDB, MeSH, SNOMED-CT, RxNorm, etc.
      def code=(value)
        write_property(:code, value)
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

      # A medical guideline related to this entity.
      def guideline
        read_property(:guideline)
      end

      # A medical guideline related to this entity.
      def guideline=(value)
        write_property(:guideline, value)
      end

      # The drug or supplement's legal status, including any controlled substance schedules that apply.
      def legal_status
        read_property(:legal_status)
      end

      # The drug or supplement's legal status, including any controlled substance schedules that apply.
      def legal_status=(value)
        write_property(:legal_status, value)
      end

      # The system of medicine that includes this MedicalEntity, for example 'evidence-based', 'homeopathic', 'chiropractic', etc.
      def medicine_system
        read_property(:medicine_system)
      end

      # The system of medicine that includes this MedicalEntity, for example 'evidence-based', 'homeopathic', 'chiropractic', etc.
      def medicine_system=(value)
        write_property(:medicine_system, value)
      end

      # If applicable, the organization that officially recognizes this entity as part of its endorsed system of medicine.
      def recognizing_authority
        read_property(:recognizing_authority)
      end

      # If applicable, the organization that officially recognizes this entity as part of its endorsed system of medicine.
      def recognizing_authority=(value)
        write_property(:recognizing_authority, value)
      end

      # If applicable, a medical specialty in which this entity is relevant.
      def relevant_specialty
        read_property(:relevant_specialty)
      end

      # If applicable, a medical specialty in which this entity is relevant.
      def relevant_specialty=(value)
        write_property(:relevant_specialty, value)
      end

      # A medical study or trial related to this entity.
      def study
        read_property(:study)
      end

      # A medical study or trial related to this entity.
      def study=(value)
        write_property(:study, value)
      end
    end
  end
end
