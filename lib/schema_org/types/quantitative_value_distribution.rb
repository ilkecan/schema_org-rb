module SchemaOrg
  # https://schema.org/QuantitativeValueDistribution
  #
  # A statistical distribution of values.
  class QuantitativeValueDistribution < Base
    include Mixins::QuantitativeValueDistribution
  end
end
