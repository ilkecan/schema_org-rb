# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/EUEnergyEfficiencyEnumeration
  #
  # Enumerates the EU energy efficiency classes A-G as well as A+, A++, and A+++ as defined in EU directive 2017/1369.
  class EUEnergyEfficiencyEnumeration < Base
    include Mixins::EUEnergyEfficiencyEnumeration

    SCHEMA_NAME = "EUEnergyEfficiencyEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::EnergyEfficiencyEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    EU_ENERGY_EFFICIENCY_CATEGORY_A = EnumerationValue.new("EUEnergyEfficiencyCategoryA", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_A1_PLUS = EnumerationValue.new("EUEnergyEfficiencyCategoryA1Plus", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_A2_PLUS = EnumerationValue.new("EUEnergyEfficiencyCategoryA2Plus", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_A3_PLUS = EnumerationValue.new("EUEnergyEfficiencyCategoryA3Plus", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_B = EnumerationValue.new("EUEnergyEfficiencyCategoryB", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_C = EnumerationValue.new("EUEnergyEfficiencyCategoryC", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_D = EnumerationValue.new("EUEnergyEfficiencyCategoryD", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_E = EnumerationValue.new("EUEnergyEfficiencyCategoryE", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_F = EnumerationValue.new("EUEnergyEfficiencyCategoryF", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    EU_ENERGY_EFFICIENCY_CATEGORY_G = EnumerationValue.new("EUEnergyEfficiencyCategoryG", [SchemaOrg::EUEnergyEfficiencyEnumeration])
    VALUES = [EU_ENERGY_EFFICIENCY_CATEGORY_A, EU_ENERGY_EFFICIENCY_CATEGORY_A1_PLUS, EU_ENERGY_EFFICIENCY_CATEGORY_A2_PLUS, EU_ENERGY_EFFICIENCY_CATEGORY_A3_PLUS, EU_ENERGY_EFFICIENCY_CATEGORY_B, EU_ENERGY_EFFICIENCY_CATEGORY_C, EU_ENERGY_EFFICIENCY_CATEGORY_D, EU_ENERGY_EFFICIENCY_CATEGORY_E, EU_ENERGY_EFFICIENCY_CATEGORY_F, EU_ENERGY_EFFICIENCY_CATEGORY_G].freeze

    def self.values
      VALUES
    end
  end
end
