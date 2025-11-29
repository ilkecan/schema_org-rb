require "active_support/concern"

module SchemaOrg
  module Mixins
    module FinancialService
      extend ActiveSupport::Concern

      include LocalBusiness

      included do
        option :fees_and_commissions_specification # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
      end
    end
  end
end
