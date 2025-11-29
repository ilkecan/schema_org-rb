module SchemaOrg
  # https://schema.org/OfferCatalog
  #
  # An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider.
  class OfferCatalog < Base
    include Mixins::OfferCatalog
  end
end
