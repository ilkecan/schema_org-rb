module SchemaOrg
  # https://schema.org/ItemListOrderType
  #
  # Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.
  class ItemListOrderType < Base
    include Mixins::ItemListOrderType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ITEM_LIST_ORDER_ASCENDING = EnumerationValue.new("ItemListOrderAscending", self, [SchemaOrg::ItemListOrderType]).freeze
    ITEM_LIST_ORDER_DESCENDING = EnumerationValue.new("ItemListOrderDescending", self, [SchemaOrg::ItemListOrderType]).freeze
    ITEM_LIST_UNORDERED = EnumerationValue.new("ItemListUnordered", self, [SchemaOrg::ItemListOrderType]).freeze
    VALUES = [ITEM_LIST_ORDER_ASCENDING, ITEM_LIST_ORDER_DESCENDING, ITEM_LIST_UNORDERED].freeze

    def self.values
      VALUES
    end
  end
end
