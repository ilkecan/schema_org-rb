module SchemaOrg
  # https://schema.org/PaymentChargeSpecification
  #
  # The costs of settling the payment using a particular payment method.
  class PaymentChargeSpecification < Base
    include Mixins::PaymentChargeSpecification
  end
end
