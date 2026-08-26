# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalCause
      include MedicalEntity

      def self.schema_property_definitions
        {
          cause_of: {
            schema_name: "causeOf",
            schema_url: "https://schema.org/causeOf",
            comment_lines: ["The condition, complication, symptom, sign, etc. caused."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: "cause",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The condition, complication, symptom, sign, etc. caused.
      # Inverse-property: `cause`.
      def cause_of
        read_property(:cause_of)
      end

      # The condition, complication, symptom, sign, etc. caused.
      # Inverse-property: `cause`.
      def cause_of=(value)
        write_property(:cause_of, value)
      end
    end
  end
end
