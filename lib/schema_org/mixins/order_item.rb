module SchemaOrg
  module Mixins
    module OrderItem
      include StructuredValue

      def self.schema_property_definitions
        {
          :order_delivery => {
            schema_name: "orderDelivery",
            ranges: ["ParcelDelivery"],
          }.freeze,
          :order_item_number => {
            schema_name: "orderItemNumber",
            ranges: ["Text"],
          }.freeze,
          :order_item_status => {
            schema_name: "orderItemStatus",
            ranges: ["OrderStatus"],
          }.freeze,
          :order_quantity => {
            schema_name: "orderQuantity",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :ordered_item => {
            schema_name: "orderedItem",
            ranges: ["OrderItem", "Product", "Service"],
          }.freeze,
        }.freeze
      end

      def order_delivery
        read_property(:order_delivery)
      end

      def order_delivery=(value)
        write_property(:order_delivery, value)
      end

      def order_item_number
        read_property(:order_item_number)
      end

      def order_item_number=(value)
        write_property(:order_item_number, value)
      end

      def order_item_status
        read_property(:order_item_status)
      end

      def order_item_status=(value)
        write_property(:order_item_status, value)
      end

      def order_quantity
        read_property(:order_quantity)
      end

      def order_quantity=(value)
        write_property(:order_quantity, value)
      end

      def ordered_item
        read_property(:ordered_item)
      end

      def ordered_item=(value)
        write_property(:ordered_item, value)
      end

    end
  end
end
