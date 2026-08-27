# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalTest
      include MedicalEntity

      def self.schema_property_definitions
        {
          affected_by: {
            schema_name: "affectedBy",
            schema_url: "https://schema.org/affectedBy",
            comment_lines: ["Drugs that affect the test's results."].freeze,
            ranges: ["Drug"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          normal_range: {
            schema_name: "normalRange",
            schema_url: "https://schema.org/normalRange",
            comment_lines: ["Range of acceptable values for a typical patient, when applicable."].freeze,
            ranges: ["MedicalEnumeration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sign_detected: {
            schema_name: "signDetected",
            schema_url: "https://schema.org/signDetected",
            comment_lines: ["A sign detected by the test."].freeze,
            ranges: ["MedicalSign"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          used_to_diagnose: {
            schema_name: "usedToDiagnose",
            schema_url: "https://schema.org/usedToDiagnose",
            comment_lines: ["A condition the test is used to diagnose."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          uses_device: {
            schema_name: "usesDevice",
            schema_url: "https://schema.org/usesDevice",
            comment_lines: ["Device used to perform the test."].freeze,
            ranges: ["MedicalDevice"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Drugs that affect the test's results.
      def affected_by
        read_property(:affected_by)
      end

      # Drugs that affect the test's results.
      def affected_by=(value)
        write_property(:affected_by, value)
      end

      # Range of acceptable values for a typical patient, when applicable.
      def normal_range
        read_property(:normal_range)
      end

      # Range of acceptable values for a typical patient, when applicable.
      def normal_range=(value)
        write_property(:normal_range, value)
      end

      # A sign detected by the test.
      def sign_detected
        read_property(:sign_detected)
      end

      # A sign detected by the test.
      def sign_detected=(value)
        write_property(:sign_detected, value)
      end

      # A condition the test is used to diagnose.
      def used_to_diagnose
        read_property(:used_to_diagnose)
      end

      # A condition the test is used to diagnose.
      def used_to_diagnose=(value)
        write_property(:used_to_diagnose, value)
      end

      # Device used to perform the test.
      def uses_device
        read_property(:uses_device)
      end

      # Device used to perform the test.
      def uses_device=(value)
        write_property(:uses_device, value)
      end
    end
  end
end
