# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module EnergyConsumptionDetails
      include Intangible

      def self.schema_property_definitions
        {
          energy_efficiency_scale_max: {
            schema_name: "energyEfficiencyScaleMax",
            schema_url: "https://schema.org/energyEfficiencyScaleMax",
            comment_lines: ["Specifies the most energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++."].freeze,
            ranges: ["EUEnergyEfficiencyEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          energy_efficiency_scale_min: {
            schema_name: "energyEfficiencyScaleMin",
            schema_url: "https://schema.org/energyEfficiencyScaleMin",
            comment_lines: ["Specifies the least energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++."].freeze,
            ranges: ["EUEnergyEfficiencyEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_energy_efficiency_category: {
            schema_name: "hasEnergyEfficiencyCategory",
            schema_url: "https://schema.org/hasEnergyEfficiencyCategory",
            comment_lines: ["Defines the energy efficiency Category (which could be either a rating out of range of values or a yes/no certification) for a product according to an international energy efficiency standard."].freeze,
            ranges: ["EnergyEfficiencyEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Specifies the most energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++.
      def energy_efficiency_scale_max
        read_property(:energy_efficiency_scale_max)
      end

      # Specifies the most energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++.
      def energy_efficiency_scale_max=(value)
        write_property(:energy_efficiency_scale_max, value)
      end

      # Specifies the least energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++.
      def energy_efficiency_scale_min
        read_property(:energy_efficiency_scale_min)
      end

      # Specifies the least energy efficient class on the regulated EU energy consumption scale for the product category a product belongs to. For example, energy consumption for televisions placed on the market after January 1, 2020 is scaled from D to A+++.
      def energy_efficiency_scale_min=(value)
        write_property(:energy_efficiency_scale_min, value)
      end

      # Defines the energy efficiency Category (which could be either a rating out of range of values or a yes/no certification) for a product according to an international energy efficiency standard.
      def has_energy_efficiency_category
        read_property(:has_energy_efficiency_category)
      end

      # Defines the energy efficiency Category (which could be either a rating out of range of values or a yes/no certification) for a product according to an international energy efficiency standard.
      def has_energy_efficiency_category=(value)
        write_property(:has_energy_efficiency_category, value)
      end
    end
  end
end
