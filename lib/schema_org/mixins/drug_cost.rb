# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DrugCost
      include MedicalEntity

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
          }.freeze,
          cost_category: {
            schema_name: "costCategory",
            schema_url: "https://schema.org/costCategory",
            comment_lines: ["The category of cost, such as wholesale, retail, reimbursement cap, etc."].freeze,
            ranges: ["DrugCostCategory"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cost_currency: {
            schema_name: "costCurrency",
            schema_url: "https://schema.org/costCurrency",
            comment_lines: ["The currency (in 3-letter) of the drug cost. See: http://en.wikipedia.org/wiki/ISO_4217."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cost_origin: {
            schema_name: "costOrigin",
            schema_url: "https://schema.org/costOrigin",
            comment_lines: ["Additional details to capture the origin of the cost data. For example, 'Medicare Part B'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cost_per_unit: {
            schema_name: "costPerUnit",
            schema_url: "https://schema.org/costPerUnit",
            comment_lines: ["The cost per unit of the drug."].freeze,
            ranges: ["Number", "QualitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          drug_unit: {
            schema_name: "drugUnit",
            schema_url: "https://schema.org/drugUnit",
            comment_lines: ["The unit in which the drug is measured, e.g. '5 mg tablet'."].freeze,
            ranges: ["Text"].freeze,
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

      # The category of cost, such as wholesale, retail, reimbursement cap, etc.
      def cost_category
        read_property(:cost_category)
      end

      # The category of cost, such as wholesale, retail, reimbursement cap, etc.
      def cost_category=(value)
        write_property(:cost_category, value)
      end

      # The currency (in 3-letter) of the drug cost. See: http://en.wikipedia.org/wiki/ISO_4217.
      def cost_currency
        read_property(:cost_currency)
      end

      # The currency (in 3-letter) of the drug cost. See: http://en.wikipedia.org/wiki/ISO_4217.
      def cost_currency=(value)
        write_property(:cost_currency, value)
      end

      # Additional details to capture the origin of the cost data. For example, 'Medicare Part B'.
      def cost_origin
        read_property(:cost_origin)
      end

      # Additional details to capture the origin of the cost data. For example, 'Medicare Part B'.
      def cost_origin=(value)
        write_property(:cost_origin, value)
      end

      # The cost per unit of the drug.
      def cost_per_unit
        read_property(:cost_per_unit)
      end

      # The cost per unit of the drug.
      def cost_per_unit=(value)
        write_property(:cost_per_unit, value)
      end

      # The unit in which the drug is measured, e.g. '5 mg tablet'.
      def drug_unit
        read_property(:drug_unit)
      end

      # The unit in which the drug is measured, e.g. '5 mg tablet'.
      def drug_unit=(value)
        write_property(:drug_unit, value)
      end
    end
  end
end
