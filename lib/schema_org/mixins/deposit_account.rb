require "active_support/concern"

module SchemaOrg
  module Mixins
    module DepositAccount
      extend ActiveSupport::Concern

      include BankAccount
      include InvestmentOrDeposit
    end
  end
end
