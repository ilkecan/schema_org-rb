# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Hospital
      include CivicStructure
      include EmergencyService
      include MedicalOrganization

      def self.schema_property_definitions
        {
          available_service: {
            schema_name: "availableService",
            schema_url: "https://schema.org/availableService",
            comment_lines: ["A medical service available from this provider."].freeze,
            ranges: ["MedicalProcedure", "MedicalTest", "MedicalTherapy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          healthcare_reporting_data: {
            schema_name: "healthcareReportingData",
            schema_url: "https://schema.org/healthcareReportingData",
            comment_lines: ["Indicates data describing a hospital, e.g. a CDC [[CDCPMDRecord]] or as some kind of [[Dataset]]."].freeze,
            ranges: ["CDCPMDRecord", "Dataset"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          medical_specialty: {
            schema_name: "medicalSpecialty",
            schema_url: "https://schema.org/medicalSpecialty",
            comment_lines: ["A medical specialty of the provider."].freeze,
            ranges: ["MedicalSpecialty"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A medical service available from this provider.
      def available_service
        read_property(:available_service)
      end

      # A medical service available from this provider.
      def available_service=(value)
        write_property(:available_service, value)
      end

      # Indicates data describing a hospital, e.g. a CDC [[CDCPMDRecord]] or as some kind of [[Dataset]].
      def healthcare_reporting_data
        read_property(:healthcare_reporting_data)
      end

      # Indicates data describing a hospital, e.g. a CDC [[CDCPMDRecord]] or as some kind of [[Dataset]].
      def healthcare_reporting_data=(value)
        write_property(:healthcare_reporting_data, value)
      end

      # A medical specialty of the provider.
      def medical_specialty
        read_property(:medical_specialty)
      end

      # A medical specialty of the provider.
      def medical_specialty=(value)
        write_property(:medical_specialty, value)
      end
    end
  end
end
