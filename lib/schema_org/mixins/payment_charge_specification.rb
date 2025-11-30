require "active_support/concern"

module SchemaOrg
  module Mixins
    module PaymentChargeSpecification
      extend ActiveSupport::Concern

      include PriceSpecification

      included do
        option :applies_to_delivery_method, optional: true # The delivery method(s) to which the delivery charge or payment charge specification applies.
        option :applies_to_payment_method, optional: true # The payment method(s) to which the payment charge specification applies.
      end
    end
  end
end
