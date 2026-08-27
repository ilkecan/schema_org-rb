# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MedicalWebPage
      include WebPage

      def self.schema_property_definitions
        {
          aspect: {
            schema_name: "aspect",
            schema_url: "https://schema.org/aspect",
            comment_lines: ["An aspect of medical practice that is considered on the page, such as 'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology', 'epidemiology', etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "mainContentOfPage",
            supersedes: nil
          }.freeze,
          medical_audience: {
            schema_name: "medicalAudience",
            schema_url: "https://schema.org/medicalAudience",
            comment_lines: ["Medical audience for page."].freeze,
            ranges: ["MedicalAudience", "MedicalAudienceType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An aspect of medical practice that is considered on the page, such as 'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology', 'epidemiology', etc.
      # Superseded by `mainContentOfPage`.
      def aspect
        read_property(:aspect)
      end

      # An aspect of medical practice that is considered on the page, such as 'diagnosis', 'treatment', 'causes', 'prognosis', 'etiology', 'epidemiology', etc.
      # Superseded by `mainContentOfPage`.
      def aspect=(value)
        write_property(:aspect, value)
      end

      # Medical audience for page.
      def medical_audience
        read_property(:medical_audience)
      end

      # Medical audience for page.
      def medical_audience=(value)
        write_property(:medical_audience, value)
      end
    end
  end
end
