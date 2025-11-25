module SchemaOrg
  # https://schema.org/AccountingService
  #
  # Accountancy business.\n\nAs a [[LocalBusiness]] it can be described as a [[provider]] of one or more [[Service]]\(s).
  class AccountingService
    include Mixins::AccountingService
  end
end
