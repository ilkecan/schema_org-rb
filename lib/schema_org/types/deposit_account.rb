# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/DepositAccount
  #
  # A type of Bank Account with a main purpose of depositing funds to gain interest or other benefits.
  class DepositAccount < Base
    include Mixins::DepositAccount

    SCHEMA_NAME = "DepositAccount"
    SCHEMA_TYPES = [self, SchemaOrg::BankAccount, SchemaOrg::InvestmentOrDeposit, SchemaOrg::FinancialProduct, SchemaOrg::Service, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
