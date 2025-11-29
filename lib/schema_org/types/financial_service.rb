module SchemaOrg
  # https://schema.org/FinancialService
  #
  # Financial services business.
  class FinancialService < Base
    include Mixins::FinancialService
  end
end
