module SchemaOrg
  # https://schema.org/QuoteAction
  #
  # An agent quotes/estimates/appraises an object/product/service with a price at a location/store.
  class QuoteAction < Base
    include Mixins::QuoteAction
  end
end
