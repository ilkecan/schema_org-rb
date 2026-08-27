# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module HealthInsurancePlan
      include Intangible

      def self.schema_property_definitions
        {
          benefits_summary_url: {
            schema_name: "benefitsSummaryUrl",
            schema_url: "https://schema.org/benefitsSummaryUrl",
            comment_lines: ["The URL that goes directly to the summary of benefits and coverage for the specific standard plan or plan variation."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contact_point: {
            schema_name: "contactPoint",
            schema_url: "https://schema.org/contactPoint",
            comment_lines: ["A contact point for a person or organization."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "contactPoints"
          }.freeze,
          health_plan_drug_option: {
            schema_name: "healthPlanDrugOption",
            schema_url: "https://schema.org/healthPlanDrugOption",
            comment_lines: ["TODO."].freeze,
            ranges: ["Text"].freeze,
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
          health_plan_id: {
            schema_name: "healthPlanId",
            schema_url: "https://schema.org/healthPlanId",
            comment_lines: ["The 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique, even across different markets.)"].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          health_plan_marketing_url: {
            schema_name: "healthPlanMarketingUrl",
            schema_url: "https://schema.org/healthPlanMarketingUrl",
            comment_lines: ["The URL that goes directly to the plan brochure for the specific standard plan or plan variation."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          includes_health_plan_formulary: {
            schema_name: "includesHealthPlanFormulary",
            schema_url: "https://schema.org/includesHealthPlanFormulary",
            comment_lines: ["Formularies covered by this plan."].freeze,
            ranges: ["HealthPlanFormulary"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          includes_health_plan_network: {
            schema_name: "includesHealthPlanNetwork",
            schema_url: "https://schema.org/includesHealthPlanNetwork",
            comment_lines: ["Networks covered by this plan."].freeze,
            ranges: ["HealthPlanNetwork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          uses_health_plan_id_standard: {
            schema_name: "usesHealthPlanIdStandard",
            schema_url: "https://schema.org/usesHealthPlanIdStandard",
            comment_lines: ["The standard for interpreting the Plan ID. The preferred is \"HIOS\". See the Centers for Medicare & Medicaid Services for more details."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The URL that goes directly to the summary of benefits and coverage for the specific standard plan or plan variation.
      def benefits_summary_url
        read_property(:benefits_summary_url)
      end

      # The URL that goes directly to the summary of benefits and coverage for the specific standard plan or plan variation.
      def benefits_summary_url=(value)
        write_property(:benefits_summary_url, value)
      end

      # A contact point for a person or organization.
      # Supersedes `contactPoints`.
      def contact_point
        read_property(:contact_point)
      end

      # A contact point for a person or organization.
      # Supersedes `contactPoints`.
      def contact_point=(value)
        write_property(:contact_point, value)
      end

      # TODO.
      def health_plan_drug_option
        read_property(:health_plan_drug_option)
      end

      # TODO.
      def health_plan_drug_option=(value)
        write_property(:health_plan_drug_option, value)
      end

      # The tier(s) of drugs offered by this formulary or insurance plan.
      def health_plan_drug_tier
        read_property(:health_plan_drug_tier)
      end

      # The tier(s) of drugs offered by this formulary or insurance plan.
      def health_plan_drug_tier=(value)
        write_property(:health_plan_drug_tier, value)
      end

      # The 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique, even across different markets.)
      def health_plan_id
        read_property(:health_plan_id)
      end

      # The 14-character, HIOS-generated Plan ID number. (Plan IDs must be unique, even across different markets.)
      def health_plan_id=(value)
        write_property(:health_plan_id, value)
      end

      # The URL that goes directly to the plan brochure for the specific standard plan or plan variation.
      def health_plan_marketing_url
        read_property(:health_plan_marketing_url)
      end

      # The URL that goes directly to the plan brochure for the specific standard plan or plan variation.
      def health_plan_marketing_url=(value)
        write_property(:health_plan_marketing_url, value)
      end

      # Formularies covered by this plan.
      def includes_health_plan_formulary
        read_property(:includes_health_plan_formulary)
      end

      # Formularies covered by this plan.
      def includes_health_plan_formulary=(value)
        write_property(:includes_health_plan_formulary, value)
      end

      # Networks covered by this plan.
      def includes_health_plan_network
        read_property(:includes_health_plan_network)
      end

      # Networks covered by this plan.
      def includes_health_plan_network=(value)
        write_property(:includes_health_plan_network, value)
      end

      # The standard for interpreting the Plan ID. The preferred is "HIOS". See the Centers for Medicare & Medicaid Services for more details.
      def uses_health_plan_id_standard
        read_property(:uses_health_plan_id_standard)
      end

      # The standard for interpreting the Plan ID. The preferred is "HIOS". See the Centers for Medicare & Medicaid Services for more details.
      def uses_health_plan_id_standard=(value)
        write_property(:uses_health_plan_id_standard, value)
      end
    end
  end
end
