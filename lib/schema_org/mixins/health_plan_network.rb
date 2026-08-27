# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module HealthPlanNetwork
      include Intangible

      def self.schema_property_definitions
        {
          health_plan_cost_sharing: {
            schema_name: "healthPlanCostSharing",
            schema_url: "https://schema.org/healthPlanCostSharing",
            comment_lines: ["The costs to the patient for services under this network or formulary."].freeze,
            ranges: ["Boolean", "HealthPlanCostSharingSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_network_id: {
            schema_name: "healthPlanNetworkId",
            schema_url: "https://schema.org/healthPlanNetworkId",
            comment_lines: ["Name or unique ID of network. (Networks are often reused across different insurance plans.)"].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_network_tier: {
            schema_name: "healthPlanNetworkTier",
            schema_url: "https://schema.org/healthPlanNetworkTier",
            comment_lines: ["The tier(s) for this network."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The costs to the patient for services under this network or formulary.
      def health_plan_cost_sharing
        read_property(:health_plan_cost_sharing)
      end

      # The costs to the patient for services under this network or formulary.
      def health_plan_cost_sharing=(value)
        write_property(:health_plan_cost_sharing, value)
      end

      # Name or unique ID of network. (Networks are often reused across different insurance plans.)
      def health_plan_network_id
        read_property(:health_plan_network_id)
      end

      # Name or unique ID of network. (Networks are often reused across different insurance plans.)
      def health_plan_network_id=(value)
        write_property(:health_plan_network_id, value)
      end

      # The tier(s) for this network.
      def health_plan_network_tier
        read_property(:health_plan_network_tier)
      end

      # The tier(s) for this network.
      def health_plan_network_tier=(value)
        write_property(:health_plan_network_tier, value)
      end
    end
  end
end
