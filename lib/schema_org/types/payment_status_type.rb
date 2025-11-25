module SchemaOrg
  # https://schema.org/PaymentStatusType
  #
  # A specific payment status. For example, PaymentDue, PaymentComplete, etc.
  class PaymentStatusType
    include Mixins::PaymentStatusType
  end
end
