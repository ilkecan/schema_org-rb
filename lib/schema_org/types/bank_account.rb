module SchemaOrg
  # https://schema.org/BankAccount
  #
  # A product or service offered by a bank whereby one may deposit, withdraw or transfer money and in some cases be paid interest.
  class BankAccount < Base
    include Mixins::BankAccount
  end
end
