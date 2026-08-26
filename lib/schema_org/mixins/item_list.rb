module SchemaOrg
  module Mixins
    module ItemList
      include Intangible

      def self.schema_property_definitions
        {
          :item_list_element => {
            schema_name: "itemListElement",
            ranges: ["ListItem", "Text", "Thing"],
          }.freeze,
          :item_list_order => {
            schema_name: "itemListOrder",
            ranges: ["ItemListOrderType", "Text"],
          }.freeze,
          :number_of_items => {
            schema_name: "numberOfItems",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def item_list_element
        read_property(:item_list_element)
      end

      def item_list_element=(value)
        write_property(:item_list_element, value)
      end

      def item_list_order
        read_property(:item_list_order)
      end

      def item_list_order=(value)
        write_property(:item_list_order, value)
      end

      def number_of_items
        read_property(:number_of_items)
      end

      def number_of_items=(value)
        write_property(:number_of_items, value)
      end

    end
  end
end
