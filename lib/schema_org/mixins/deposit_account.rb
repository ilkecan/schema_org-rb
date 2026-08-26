# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DepositAccount
      include BankAccount
      include InvestmentOrDeposit

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
