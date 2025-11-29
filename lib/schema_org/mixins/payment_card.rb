require "active_support/concern"

module SchemaOrg
  module Mixins
    module PaymentCard
      extend ActiveSupport::Concern

      include FinancialProduct
      include PaymentMethod
    end
  end
end
