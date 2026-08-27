# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MedicalProcedure
      include MedicalEntity

      def self.schema_property_definitions
        {
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
          followup: {
            schema_name: "followup",
            schema_url: "https://schema.org/followup",
            comment_lines: ["Typical or recommended followup care after the procedure is performed."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          how_performed: {
            schema_name: "howPerformed",
            schema_url: "https://schema.org/howPerformed",
            comment_lines: ["How the procedure is performed."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          preparation: {
            schema_name: "preparation",
            schema_url: "https://schema.org/preparation",
            comment_lines: ["Typical preparation that a patient must undergo before having the procedure performed."].freeze,
            ranges: ["MedicalEntity", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          procedure_type: {
            schema_name: "procedureType",
            schema_url: "https://schema.org/procedureType",
            comment_lines: ["The type of procedure, for example Surgical, Noninvasive, or Percutaneous."].freeze,
            ranges: ["MedicalProcedureType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          status: {
            schema_name: "status",
            schema_url: "https://schema.org/status",
            comment_lines: ["The status of the study (enumerated)."].freeze,
            ranges: ["EventStatusType", "MedicalStudyStatus", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Location in the body of the anatomical structure.
      def body_location
        read_property(:body_location)
      end

      # Location in the body of the anatomical structure.
      def body_location=(value)
        write_property(:body_location, value)
      end

      # Typical or recommended followup care after the procedure is performed.
      def followup
        read_property(:followup)
      end

      # Typical or recommended followup care after the procedure is performed.
      def followup=(value)
        write_property(:followup, value)
      end

      # How the procedure is performed.
      def how_performed
        read_property(:how_performed)
      end

      # How the procedure is performed.
      def how_performed=(value)
        write_property(:how_performed, value)
      end

      # Typical preparation that a patient must undergo before having the procedure performed.
      def preparation
        read_property(:preparation)
      end

      # Typical preparation that a patient must undergo before having the procedure performed.
      def preparation=(value)
        write_property(:preparation, value)
      end

      # The type of procedure, for example Surgical, Noninvasive, or Percutaneous.
      def procedure_type
        read_property(:procedure_type)
      end

      # The type of procedure, for example Surgical, Noninvasive, or Percutaneous.
      def procedure_type=(value)
        write_property(:procedure_type, value)
      end

      # The status of the study (enumerated).
      def status
        read_property(:status)
      end

      # The status of the study (enumerated).
      def status=(value)
        write_property(:status, value)
      end
    end
  end
end
