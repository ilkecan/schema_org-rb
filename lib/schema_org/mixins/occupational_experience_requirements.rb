# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module OccupationalExperienceRequirements
      include Intangible

      def self.schema_property_definitions
        {
          months_of_experience: {
            schema_name: "monthsOfExperience",
            schema_url: "https://schema.org/monthsOfExperience",
            comment_lines: ["Indicates the minimal number of months of experience required for a position."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the minimal number of months of experience required for a position.
      def months_of_experience
        read_property(:months_of_experience)
      end

      # Indicates the minimal number of months of experience required for a position.
      def months_of_experience=(value)
        write_property(:months_of_experience, value)
      end
    end
  end
end
