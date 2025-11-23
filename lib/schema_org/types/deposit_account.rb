module SchemaOrg
  module Types
    module DepositAccount
      include BankAccount
      include InvestmentOrDeposit
    end
  end
end
