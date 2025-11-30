require "active_support/concern"

module SchemaOrg
  module Mixins
    module LoanOrCredit
      extend ActiveSupport::Concern

      include FinancialProduct

      included do
        option :amount, optional: true # The amount of money.
        option :loan_term, optional: true # The duration of the loan or credit agreement.
        option :required_collateral, optional: true # Assets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)
      end
    end
  end
end
