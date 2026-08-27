# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ImagingTest
      include MedicalTest

      def self.schema_property_definitions
        {
          imaging_technique: {
            schema_name: "imagingTechnique",
            schema_url: "https://schema.org/imagingTechnique",
            comment_lines: ["Imaging technique used."].freeze,
            ranges: ["MedicalImagingTechnique"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Imaging technique used.
      def imaging_technique
        read_property(:imaging_technique)
      end

      # Imaging technique used.
      def imaging_technique=(value)
        write_property(:imaging_technique, value)
      end
    end
  end
end
