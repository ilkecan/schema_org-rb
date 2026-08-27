# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DDxElement
      include MedicalIntangible

      def self.schema_property_definitions
        {
          diagnosis: {
            schema_name: "diagnosis",
            schema_url: "https://schema.org/diagnosis",
            comment_lines: ["One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process."].freeze,
            ranges: ["MedicalCondition"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          distinguishing_sign: {
            schema_name: "distinguishingSign",
            schema_url: "https://schema.org/distinguishingSign",
            comment_lines: ["One of a set of signs and symptoms that can be used to distinguish this diagnosis from others in the differential diagnosis."].freeze,
            ranges: ["MedicalSignOrSymptom"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process.
      def diagnosis
        read_property(:diagnosis)
      end

      # One or more alternative conditions considered in the differential diagnosis process as output of a diagnosis process.
      def diagnosis=(value)
        write_property(:diagnosis, value)
      end

      # One of a set of signs and symptoms that can be used to distinguish this diagnosis from others in the differential diagnosis.
      def distinguishing_sign
        read_property(:distinguishing_sign)
      end

      # One of a set of signs and symptoms that can be used to distinguish this diagnosis from others in the differential diagnosis.
      def distinguishing_sign=(value)
        write_property(:distinguishing_sign, value)
      end
    end
  end
end
