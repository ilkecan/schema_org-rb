require "active_support/concern"

module SchemaOrg
  module Mixins
    module InvestmentOrDeposit
      extend ActiveSupport::Concern

      include FinancialProduct

      included do
        option :amount, optional: true # The amount of money.
      end
    end
  end
end
