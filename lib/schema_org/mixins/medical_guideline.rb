# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalGuideline
      include MedicalEntity

      def self.schema_property_definitions
        {
          evidence_level: {
            schema_name: "evidenceLevel",
            schema_url: "https://schema.org/evidenceLevel",
            comment_lines: ["Strength of evidence of the data used to formulate the guideline (enumerated)."].freeze,
            ranges: ["MedicalEvidenceLevel"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          evidence_origin: {
            schema_name: "evidenceOrigin",
            schema_url: "https://schema.org/evidenceOrigin",
            comment_lines: ["Source of the data used to formulate the guidance, e.g. RCT, consensus opinion, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          guideline_date: {
            schema_name: "guidelineDate",
            schema_url: "https://schema.org/guidelineDate",
            comment_lines: ["Date on which this guideline's recommendation was made."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          guideline_subject: {
            schema_name: "guidelineSubject",
            schema_url: "https://schema.org/guidelineSubject",
            comment_lines: ["The medical conditions, treatments, etc. that are the subject of the guideline."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Strength of evidence of the data used to formulate the guideline (enumerated).
      def evidence_level
        read_property(:evidence_level)
      end

      # Strength of evidence of the data used to formulate the guideline (enumerated).
      def evidence_level=(value)
        write_property(:evidence_level, value)
      end

      # Source of the data used to formulate the guidance, e.g. RCT, consensus opinion, etc.
      def evidence_origin
        read_property(:evidence_origin)
      end

      # Source of the data used to formulate the guidance, e.g. RCT, consensus opinion, etc.
      def evidence_origin=(value)
        write_property(:evidence_origin, value)
      end

      # Date on which this guideline's recommendation was made.
      def guideline_date
        read_property(:guideline_date)
      end

      # Date on which this guideline's recommendation was made.
      def guideline_date=(value)
        write_property(:guideline_date, value)
      end

      # The medical conditions, treatments, etc. that are the subject of the guideline.
      def guideline_subject
        read_property(:guideline_subject)
      end

      # The medical conditions, treatments, etc. that are the subject of the guideline.
      def guideline_subject=(value)
        write_property(:guideline_subject, value)
      end
    end
  end
end
