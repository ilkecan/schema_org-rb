# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ProductCollection
  #
  # A set of products (either [[ProductGroup]]s or specific variants) that are listed together e.g. in an [[Offer]].
  class ProductCollection < Base
    include Mixins::ProductCollection

    SCHEMA_NAME = "ProductCollection"
    SCHEMA_TYPES = [self, SchemaOrg::Collection, SchemaOrg::Product, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
