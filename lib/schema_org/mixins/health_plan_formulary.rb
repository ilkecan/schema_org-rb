# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module HealthPlanFormulary
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
          health_plan_drug_tier: {
            schema_name: "healthPlanDrugTier",
            schema_url: "https://schema.org/healthPlanDrugTier",
            comment_lines: ["The tier(s) of drugs offered by this formulary or insurance plan."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offers_prescription_by_mail: {
            schema_name: "offersPrescriptionByMail",
            schema_url: "https://schema.org/offersPrescriptionByMail",
            comment_lines: ["Whether prescriptions can be delivered by mail."].freeze,
            ranges: ["Boolean"].freeze,
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

      # The tier(s) of drugs offered by this formulary or insurance plan.
      def health_plan_drug_tier
        read_property(:health_plan_drug_tier)
      end

      # The tier(s) of drugs offered by this formulary or insurance plan.
      def health_plan_drug_tier=(value)
        write_property(:health_plan_drug_tier, value)
      end

      # Whether prescriptions can be delivered by mail.
      def offers_prescription_by_mail
        read_property(:offers_prescription_by_mail)
      end

      # Whether prescriptions can be delivered by mail.
      def offers_prescription_by_mail=(value)
        write_property(:offers_prescription_by_mail, value)
      end
    end
  end
end
