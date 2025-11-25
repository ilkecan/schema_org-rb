module SchemaOrg
  # https://schema.org/PaymentService
  #
  # A Service to transfer funds from a person or organization to a beneficiary person or organization.
  class PaymentService
    include Mixins::PaymentService
  end
end
