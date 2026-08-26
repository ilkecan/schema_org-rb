# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalRiskFactor
      include MedicalEntity

      def self.schema_property_definitions
        {
          increases_risk_of: {
            schema_name: "increasesRiskOf",
            schema_url: "https://schema.org/increasesRiskOf",
            comment_lines: ["The condition, complication, etc. influenced by this factor."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The condition, complication, etc. influenced by this factor.
      def increases_risk_of
        read_property(:increases_risk_of)
      end

      # The condition, complication, etc. influenced by this factor.
      def increases_risk_of=(value)
        write_property(:increases_risk_of, value)
      end
    end
  end
end
