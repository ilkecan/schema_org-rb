# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module HealthPlanCostSharingSpecification
      include Intangible

      def self.schema_property_definitions
        {
          health_plan_coinsurance_option: {
            schema_name: "healthPlanCoinsuranceOption",
            schema_url: "https://schema.org/healthPlanCoinsuranceOption",
            comment_lines: ["Whether the coinsurance applies before or after deductible, etc. TODO: Is this a closed set?"].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_coinsurance_rate: {
            schema_name: "healthPlanCoinsuranceRate",
            schema_url: "https://schema.org/healthPlanCoinsuranceRate",
            comment_lines: ["The rate of coinsurance expressed as a number between 0.0 and 1.0."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_copay: {
            schema_name: "healthPlanCopay",
            schema_url: "https://schema.org/healthPlanCopay",
            comment_lines: ["The copay amount."].freeze,
            ranges: ["PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_copay_option: {
            schema_name: "healthPlanCopayOption",
            schema_url: "https://schema.org/healthPlanCopayOption",
            comment_lines: ["Whether the copay is before or after deductible, etc. TODO: Is this a closed set?"].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_pharmacy_category: {
            schema_name: "healthPlanPharmacyCategory",
            schema_url: "https://schema.org/healthPlanPharmacyCategory",
            comment_lines: ["The category or type of pharmacy associated with this cost sharing."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Whether the coinsurance applies before or after deductible, etc. TODO: Is this a closed set?
      def health_plan_coinsurance_option
        read_property(:health_plan_coinsurance_option)
      end

      # Whether the coinsurance applies before or after deductible, etc. TODO: Is this a closed set?
      def health_plan_coinsurance_option=(value)
        write_property(:health_plan_coinsurance_option, value)
      end

      # The rate of coinsurance expressed as a number between 0.0 and 1.0.
      def health_plan_coinsurance_rate
        read_property(:health_plan_coinsurance_rate)
      end

      # The rate of coinsurance expressed as a number between 0.0 and 1.0.
      def health_plan_coinsurance_rate=(value)
        write_property(:health_plan_coinsurance_rate, value)
      end

      # The copay amount.
      def health_plan_copay
        read_property(:health_plan_copay)
      end

      # The copay amount.
      def health_plan_copay=(value)
        write_property(:health_plan_copay, value)
      end

      # Whether the copay is before or after deductible, etc. TODO: Is this a closed set?
      def health_plan_copay_option
        read_property(:health_plan_copay_option)
      end

      # Whether the copay is before or after deductible, etc. TODO: Is this a closed set?
      def health_plan_copay_option=(value)
        write_property(:health_plan_copay_option, value)
      end

      # The category or type of pharmacy associated with this cost sharing.
      def health_plan_pharmacy_category
        read_property(:health_plan_pharmacy_category)
      end

      # The category or type of pharmacy associated with this cost sharing.
      def health_plan_pharmacy_category=(value)
        write_property(:health_plan_pharmacy_category, value)
      end
    end
  end
end
