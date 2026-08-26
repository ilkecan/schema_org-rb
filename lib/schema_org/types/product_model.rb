# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ProductModel
  #
  # A datasheet or vendor specification of a product (in the sense of a prototypical description).
  class ProductModel < Base
    include Mixins::ProductModel

    SCHEMA_NAME = "ProductModel"
    SCHEMA_TYPES = [self, SchemaOrg::Product, SchemaOrg::Thing].freeze

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
