# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Collection
  #
  # A collection of items, e.g. creative works or products.
  class Collection < Base
    include Mixins::Collection

    SCHEMA_NAME = "Collection"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
