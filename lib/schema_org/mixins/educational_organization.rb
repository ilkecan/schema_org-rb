# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module EducationalOrganization
      include CivicStructure
      include Organization

      def self.schema_property_definitions
        {
          alumni: {
            schema_name: "alumni",
            schema_url: "https://schema.org/alumni",
            comment_lines: ["Alumni of an organization."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: "alumniOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Alumni of an organization.
      # Inverse-property: `alumniOf`.
      def alumni
        read_property(:alumni)
      end

      # Alumni of an organization.
      # Inverse-property: `alumniOf`.
      def alumni=(value)
        write_property(:alumni, value)
      end
    end
  end
end
