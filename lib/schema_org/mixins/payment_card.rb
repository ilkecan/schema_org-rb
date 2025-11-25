module SchemaOrg
  module Mixins
    module PaymentCard
      include FinancialProduct
      include PaymentMethod
    end
  end
end
