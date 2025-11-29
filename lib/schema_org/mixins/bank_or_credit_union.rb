require "active_support/concern"

module SchemaOrg
  module Mixins
    module BankOrCreditUnion
      extend ActiveSupport::Concern

      include FinancialService
    end
  end
end
