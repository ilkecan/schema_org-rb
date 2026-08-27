# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/ItemListOrderType
  #
  # Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.
  class ItemListOrderType < Base
    include Mixins::ItemListOrderType

    SCHEMA_NAME = "ItemListOrderType"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ITEM_LIST_ORDER_ASCENDING = EnumerationValue.new("ItemListOrderAscending", [SchemaOrg::ItemListOrderType])
    ITEM_LIST_ORDER_DESCENDING = EnumerationValue.new("ItemListOrderDescending", [SchemaOrg::ItemListOrderType])
    ITEM_LIST_UNORDERED = EnumerationValue.new("ItemListUnordered", [SchemaOrg::ItemListOrderType])
    VALUES = [ITEM_LIST_ORDER_ASCENDING, ITEM_LIST_ORDER_DESCENDING, ITEM_LIST_UNORDERED].freeze

    def self.values
      VALUES
    end
  end
end
