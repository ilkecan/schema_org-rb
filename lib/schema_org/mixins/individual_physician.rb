# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module IndividualPhysician
      include Physician

      def self.schema_property_definitions
        {
          practices_at: {
            schema_name: "practicesAt",
            schema_url: "https://schema.org/practicesAt",
            comment_lines: ["A [[MedicalOrganization]] where the [[IndividualPhysician]] practices."].freeze,
            ranges: ["MedicalOrganization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A [[MedicalOrganization]] where the [[IndividualPhysician]] practices.
      def practices_at
        read_property(:practices_at)
      end

      # A [[MedicalOrganization]] where the [[IndividualPhysician]] practices.
      def practices_at=(value)
        write_property(:practices_at, value)
      end
    end
  end
end
