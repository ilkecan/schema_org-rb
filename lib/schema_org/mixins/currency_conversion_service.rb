require "active_support/concern"

module SchemaOrg
  module Mixins
    module CurrencyConversionService
      extend ActiveSupport::Concern

      include FinancialProduct
    end
  end
end
