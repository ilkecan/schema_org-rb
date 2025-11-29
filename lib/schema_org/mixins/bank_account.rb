require "active_support/concern"

module SchemaOrg
  module Mixins
    module BankAccount
      extend ActiveSupport::Concern

      include FinancialProduct
    end
  end
end
