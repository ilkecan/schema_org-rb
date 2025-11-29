module SchemaOrg
  # https://schema.org/MonetaryAmountDistribution
  #
  # A statistical distribution of monetary amounts.
  class MonetaryAmountDistribution < Base
    include Mixins::MonetaryAmountDistribution
  end
end
