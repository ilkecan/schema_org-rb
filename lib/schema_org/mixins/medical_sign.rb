# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalSign
      include MedicalSignOrSymptom

      def self.schema_property_definitions
        {
          identifying_exam: {
            schema_name: "identifyingExam",
            schema_url: "https://schema.org/identifyingExam",
            comment_lines: ["A physical examination that can identify this sign."].freeze,
            ranges: ["PhysicalExam"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          identifying_test: {
            schema_name: "identifyingTest",
            schema_url: "https://schema.org/identifyingTest",
            comment_lines: ["A diagnostic test that can identify this sign."].freeze,
            ranges: ["MedicalTest"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A physical examination that can identify this sign.
      def identifying_exam
        read_property(:identifying_exam)
      end

      # A physical examination that can identify this sign.
      def identifying_exam=(value)
        write_property(:identifying_exam, value)
      end

      # A diagnostic test that can identify this sign.
      def identifying_test
        read_property(:identifying_test)
      end

      # A diagnostic test that can identify this sign.
      def identifying_test=(value)
        write_property(:identifying_test, value)
      end
    end
  end
end
