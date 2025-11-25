module SchemaOrg
  module Mixins
    module CreditCard
      include LoanOrCredit
      include PaymentCard
    end
  end
end
