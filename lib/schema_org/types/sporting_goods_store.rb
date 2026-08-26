# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SportingGoodsStore
  #
  # A sporting goods store.
  class SportingGoodsStore < Base
    include Mixins::SportingGoodsStore

    SCHEMA_NAME = "SportingGoodsStore"
    SCHEMA_TYPES = [self, SchemaOrg::Store, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
