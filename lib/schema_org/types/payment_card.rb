module SchemaOrg
  # https://schema.org/PaymentCard
  #
  # A payment method using a credit, debit, store or other card to associate the payment with an account.
  class PaymentCard
    include Mixins::PaymentCard
  end
end
