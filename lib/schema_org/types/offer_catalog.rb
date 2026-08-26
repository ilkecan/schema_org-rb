module SchemaOrg
  # https://schema.org/OfferCatalog
  #
  # An OfferCatalog is an ItemList that contains related Offers and/or further OfferCatalogs that are offeredBy the same provider.
  class OfferCatalog < Base
    include Mixins::OfferCatalog
    SCHEMA_TYPES = [self, SchemaOrg::ItemList, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
  end
end
