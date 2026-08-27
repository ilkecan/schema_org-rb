# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/BrokerageAccount
  #
  # An account that allows an investor to deposit funds and place investment orders with a licensed broker or brokerage firm.
  class BrokerageAccount < Base
    include Mixins::BrokerageAccount

    SCHEMA_NAME = "BrokerageAccount"
    SCHEMA_TYPES = [self, SchemaOrg::InvestmentOrDeposit, SchemaOrg::FinancialProduct, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
