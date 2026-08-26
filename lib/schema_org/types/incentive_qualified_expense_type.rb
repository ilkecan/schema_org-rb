# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/IncentiveQualifiedExpenseType
  #
  # The types of expenses that are covered by the incentive. For example some incentives are only for the goods (tangible items) but the services (labor) are excluded.
  class IncentiveQualifiedExpenseType < Base
    include Mixins::IncentiveQualifiedExpenseType

    SCHEMA_NAME = "IncentiveQualifiedExpenseType"
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
    INCENTIVE_QUALIFIED_EXPENSE_TYPE_GOODS_ONLY = EnumerationValue.new("IncentiveQualifiedExpenseTypeGoodsOnly", [SchemaOrg::IncentiveQualifiedExpenseType])
    INCENTIVE_QUALIFIED_EXPENSE_TYPE_GOODS_OR_SERVICES = EnumerationValue.new("IncentiveQualifiedExpenseTypeGoodsOrServices", [SchemaOrg::IncentiveQualifiedExpenseType])
    INCENTIVE_QUALIFIED_EXPENSE_TYPE_SERVICES_ONLY = EnumerationValue.new("IncentiveQualifiedExpenseTypeServicesOnly", [SchemaOrg::IncentiveQualifiedExpenseType])
    INCENTIVE_QUALIFIED_EXPENSE_TYPE_UTILITY_BILL = EnumerationValue.new("IncentiveQualifiedExpenseTypeUtilityBill", [SchemaOrg::IncentiveQualifiedExpenseType])
    VALUES = [INCENTIVE_QUALIFIED_EXPENSE_TYPE_GOODS_ONLY, INCENTIVE_QUALIFIED_EXPENSE_TYPE_GOODS_OR_SERVICES, INCENTIVE_QUALIFIED_EXPENSE_TYPE_SERVICES_ONLY, INCENTIVE_QUALIFIED_EXPENSE_TYPE_UTILITY_BILL].freeze

    def self.values
      VALUES
    end
  end
end
