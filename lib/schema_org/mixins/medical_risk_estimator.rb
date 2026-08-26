# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MedicalRiskEstimator
      include MedicalEntity

      def self.schema_property_definitions
        {
          estimates_risk_of: {
            schema_name: "estimatesRiskOf",
            schema_url: "https://schema.org/estimatesRiskOf",
            comment_lines: ["The condition, complication, or symptom whose risk is being estimated."].freeze,
            ranges: ["MedicalEntity"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          included_risk_factor: {
            schema_name: "includedRiskFactor",
            schema_url: "https://schema.org/includedRiskFactor",
            comment_lines: ["A modifiable or non-modifiable risk factor included in the calculation, e.g. age, coexisting condition."].freeze,
            ranges: ["MedicalRiskFactor"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The condition, complication, or symptom whose risk is being estimated.
      def estimates_risk_of
        read_property(:estimates_risk_of)
      end

      # The condition, complication, or symptom whose risk is being estimated.
      def estimates_risk_of=(value)
        write_property(:estimates_risk_of, value)
      end

      # A modifiable or non-modifiable risk factor included in the calculation, e.g. age, coexisting condition.
      def included_risk_factor
        read_property(:included_risk_factor)
      end

      # A modifiable or non-modifiable risk factor included in the calculation, e.g. age, coexisting condition.
      def included_risk_factor=(value)
        write_property(:included_risk_factor, value)
      end
    end
  end
end
