module SchemaOrg
  module Mixins
    module DepositAccount
      include BankAccount
      include InvestmentOrDeposit
    end
  end
end
