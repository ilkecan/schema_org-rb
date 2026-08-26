# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PaymentCard
  #
  # A payment method using a credit, debit, store or other card to associate the payment with an account.
  class PaymentCard < Base
    include Mixins::PaymentCard

    SCHEMA_NAME = "PaymentCard"
    SCHEMA_TYPES = [self, SchemaOrg::FinancialProduct, SchemaOrg::PaymentMethod, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
