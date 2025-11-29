module SchemaOrg
  # https://schema.org/DepositAccount
  #
  # A type of Bank Account with a main purpose of depositing funds to gain interest or other benefits.
  class DepositAccount < Base
    include Mixins::DepositAccount
  end
end
