# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/FinancialIncentive
  #
  # <p>Represents financial incentives for goods/services offered by an organization (or individual).</p>
  #
  # <p>Typically contains the [[name]] of the incentive, the [[incentivizedItem]], the [[incentiveAmount]], the [[incentiveStatus]], [[incentiveType]], the [[provider]] of the incentive, and [[eligibleWithSupplier]].</p>
  #
  # <p>Optionally contains criteria on whether the incentive is limited based on [[purchaseType]], [[purchasePriceLimit]], [[incomeLimit]], and the [[qualifiedExpense]].
  class FinancialIncentive < Base
    include Mixins::FinancialIncentive

    SCHEMA_NAME = "FinancialIncentive"
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
  end
end
