# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalOrganization
      include Organization

      def self.schema_property_definitions
        {
          health_plan_network_id: {
            schema_name: "healthPlanNetworkId",
            schema_url: "https://schema.org/healthPlanNetworkId",
            comment_lines: ["Name or unique ID of network. (Networks are often reused across different insurance plans.)"].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_accepting_new_patients: {
            schema_name: "isAcceptingNewPatients",
            schema_url: "https://schema.org/isAcceptingNewPatients",
            comment_lines: ["Whether the provider is accepting new patients."].freeze,
            ranges: ["Boolean"].freeze,
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

      # Name or unique ID of network. (Networks are often reused across different insurance plans.)
      def health_plan_network_id
        read_property(:health_plan_network_id)
      end

      # Name or unique ID of network. (Networks are often reused across different insurance plans.)
      def health_plan_network_id=(value)
        write_property(:health_plan_network_id, value)
      end

      # Whether the provider is accepting new patients.
      def is_accepting_new_patients
        read_property(:is_accepting_new_patients)
      end

      # Whether the provider is accepting new patients.
      def is_accepting_new_patients=(value)
        write_property(:is_accepting_new_patients, value)
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
