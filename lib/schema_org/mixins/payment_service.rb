module SchemaOrg
  module Mixins
    module PaymentService
      include FinancialProduct
      include PaymentMethod
    end
  end
end
