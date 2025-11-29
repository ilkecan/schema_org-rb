module SchemaOrg
  # https://schema.org/BankOrCreditUnion
  #
  # Bank or credit union.
  class BankOrCreditUnion < Base
    include Mixins::BankOrCreditUnion
  end
end
