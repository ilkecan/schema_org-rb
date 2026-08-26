# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ItemList
      include Intangible

      def self.schema_property_definitions
        {
          aggregate_element: {
            schema_name: "aggregateElement",
            schema_url: "https://schema.org/aggregateElement",
            comment_lines: ["Indicates a prototype of the elements in the list that is used to hold aggregate information (ratings, offers, etc.)."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_list_element: {
            schema_name: "itemListElement",
            schema_url: "https://schema.org/itemListElement",
            comment_lines: ["For itemListElement values, you can use simple strings (e.g. \"Peter\", \"Paul\", \"Mary\"), existing entities, or use ListItem.\\n\\nText values are best if the elements in the list are plain strings. Existing entities are best for a simple, unordered list of existing things in your data. ListItem is used with ordered lists when you want to provide additional context about the element in that list or when the same item might be in different places in different lists.\\n\\nNote: The order of elements in your mark-up is not sufficient for indicating the order or elements.  Use ListItem with a 'position' property in such cases."].freeze,
            ranges: ["ListItem", "Text", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          item_list_order: {
            schema_name: "itemListOrder",
            schema_url: "https://schema.org/itemListOrder",
            comment_lines: ["Type of ordering (e.g. Ascending, Descending, Unordered)."].freeze,
            ranges: ["ItemListOrderType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_items: {
            schema_name: "numberOfItems",
            schema_url: "https://schema.org/numberOfItems",
            comment_lines: ["The number of items in an ItemList. Note that some descriptions might not fully describe all items in a list (e.g., multi-page pagination); in such cases, the numberOfItems would be for the entire list."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates a prototype of the elements in the list that is used to hold aggregate information (ratings, offers, etc.).
      def aggregate_element
        read_property(:aggregate_element)
      end

      # Indicates a prototype of the elements in the list that is used to hold aggregate information (ratings, offers, etc.).
      def aggregate_element=(value)
        write_property(:aggregate_element, value)
      end

      # For itemListElement values, you can use simple strings (e.g. "Peter", "Paul", "Mary"), existing entities, or use ListItem.\n\nText values are best if the elements in the list are plain strings. Existing entities are best for a simple, unordered list of existing things in your data. ListItem is used with ordered lists when you want to provide additional context about the element in that list or when the same item might be in different places in different lists.\n\nNote: The order of elements in your mark-up is not sufficient for indicating the order or elements.  Use ListItem with a 'position' property in such cases.
      def item_list_element
        read_property(:item_list_element)
      end

      # For itemListElement values, you can use simple strings (e.g. "Peter", "Paul", "Mary"), existing entities, or use ListItem.\n\nText values are best if the elements in the list are plain strings. Existing entities are best for a simple, unordered list of existing things in your data. ListItem is used with ordered lists when you want to provide additional context about the element in that list or when the same item might be in different places in different lists.\n\nNote: The order of elements in your mark-up is not sufficient for indicating the order or elements.  Use ListItem with a 'position' property in such cases.
      def item_list_element=(value)
        write_property(:item_list_element, value)
      end

      # Type of ordering (e.g. Ascending, Descending, Unordered).
      def item_list_order
        read_property(:item_list_order)
      end

      # Type of ordering (e.g. Ascending, Descending, Unordered).
      def item_list_order=(value)
        write_property(:item_list_order, value)
      end

      # The number of items in an ItemList. Note that some descriptions might not fully describe all items in a list (e.g., multi-page pagination); in such cases, the numberOfItems would be for the entire list.
      def number_of_items
        read_property(:number_of_items)
      end

      # The number of items in an ItemList. Note that some descriptions might not fully describe all items in a list (e.g., multi-page pagination); in such cases, the numberOfItems would be for the entire list.
      def number_of_items=(value)
        write_property(:number_of_items, value)
      end
    end
  end
end
