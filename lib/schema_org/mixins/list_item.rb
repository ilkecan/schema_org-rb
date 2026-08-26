module SchemaOrg
  module Mixins
    module ListItem
      include Intangible

      def self.schema_property_definitions
        {
          :item => {
            schema_name: "item",
            ranges: ["Thing"],
          }.freeze,
          :next_item => {
            schema_name: "nextItem",
            ranges: ["ListItem"],
          }.freeze,
          :position => {
            schema_name: "position",
            ranges: ["Integer", "Text"],
          }.freeze,
          :previous_item => {
            schema_name: "previousItem",
            ranges: ["ListItem"],
          }.freeze,
        }.freeze
      end

      def item
        read_property(:item)
      end

      def item=(value)
        write_property(:item, value)
      end

      def next_item
        read_property(:next_item)
      end

      def next_item=(value)
        write_property(:next_item, value)
      end

      def position
        read_property(:position)
      end

      def position=(value)
        write_property(:position, value)
      end

      def previous_item
        read_property(:previous_item)
      end

      def previous_item=(value)
        write_property(:previous_item, value)
      end

    end
  end
end
