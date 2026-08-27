# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/IncentiveType
  #
  # Enumerates common financial incentives for products, including tax credits, tax deductions, rebates and subsidies, etc.
  class IncentiveType < Base
    include Mixins::IncentiveType

    SCHEMA_NAME = "IncentiveType"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    INCENTIVE_TYPE_LOAN = EnumerationValue.new("IncentiveTypeLoan", [SchemaOrg::IncentiveType])
    INCENTIVE_TYPE_REBATE_OR_SUBSIDY = EnumerationValue.new("IncentiveTypeRebateOrSubsidy", [SchemaOrg::IncentiveType])
    INCENTIVE_TYPE_TAX_CREDIT = EnumerationValue.new("IncentiveTypeTaxCredit", [SchemaOrg::IncentiveType])
    INCENTIVE_TYPE_TAX_DEDUCTION = EnumerationValue.new("IncentiveTypeTaxDeduction", [SchemaOrg::IncentiveType])
    INCENTIVE_TYPE_TAX_WAIVER = EnumerationValue.new("IncentiveTypeTaxWaiver", [SchemaOrg::IncentiveType])
    VALUES = [INCENTIVE_TYPE_LOAN, INCENTIVE_TYPE_REBATE_OR_SUBSIDY, INCENTIVE_TYPE_TAX_CREDIT, INCENTIVE_TYPE_TAX_DEDUCTION, INCENTIVE_TYPE_TAX_WAIVER].freeze

    def self.values
      VALUES
    end
  end
end
