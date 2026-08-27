# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module DrugLegalStatus
      include MedicalIntangible

      def self.schema_property_definitions
        {
          applicable_location: {
            schema_name: "applicableLocation",
            schema_url: "https://schema.org/applicableLocation",
            comment_lines: ["The location in which the status applies."].freeze,
            ranges: ["AdministrativeArea"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The location in which the status applies.
      def applicable_location
        read_property(:applicable_location)
      end

      # The location in which the status applies.
      def applicable_location=(value)
        write_property(:applicable_location, value)
      end
    end
  end
end
