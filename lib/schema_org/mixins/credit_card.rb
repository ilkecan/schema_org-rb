require "active_support/concern"

module SchemaOrg
  module Mixins
    module CreditCard
      extend ActiveSupport::Concern

      include LoanOrCredit
      include PaymentCard
    end
  end
end
