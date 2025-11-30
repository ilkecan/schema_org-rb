require "active_support/concern"

module SchemaOrg
  module Mixins
    module FinancialProduct
      extend ActiveSupport::Concern

      include Service

      included do
        option :annual_percentage_rate, optional: true # The annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction.
        option :fees_and_commissions_specification, optional: true # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
        option :interest_rate, optional: true # The interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate.
      end
    end
  end
end
