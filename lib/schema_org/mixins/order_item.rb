# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module OrderItem
      include StructuredValue

      def self.schema_property_definitions
        {
          order_delivery: {
            schema_name: "orderDelivery",
            schema_url: "https://schema.org/orderDelivery",
            comment_lines: ["The delivery of the parcel related to this order or order item."].freeze,
            ranges: ["ParcelDelivery"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_item_number: {
            schema_name: "orderItemNumber",
            schema_url: "https://schema.org/orderItemNumber",
            comment_lines: ["The identifier of the order item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_item_status: {
            schema_name: "orderItemStatus",
            schema_url: "https://schema.org/orderItemStatus",
            comment_lines: ["The current status of the order item."].freeze,
            ranges: ["OrderStatus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_quantity: {
            schema_name: "orderQuantity",
            schema_url: "https://schema.org/orderQuantity",
            comment_lines: ["The number of the item ordered. If the property is not set, assume the quantity is one."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ordered_item: {
            schema_name: "orderedItem",
            schema_url: "https://schema.org/orderedItem",
            comment_lines: ["The item ordered."].freeze,
            ranges: ["OrderItem", "Product", "Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The delivery of the parcel related to this order or order item.
      def order_delivery
        read_property(:order_delivery)
      end

      # The delivery of the parcel related to this order or order item.
      def order_delivery=(value)
        write_property(:order_delivery, value)
      end

      # The identifier of the order item.
      def order_item_number
        read_property(:order_item_number)
      end

      # The identifier of the order item.
      def order_item_number=(value)
        write_property(:order_item_number, value)
      end

      # The current status of the order item.
      def order_item_status
        read_property(:order_item_status)
      end

      # The current status of the order item.
      def order_item_status=(value)
        write_property(:order_item_status, value)
      end

      # The number of the item ordered. If the property is not set, assume the quantity is one.
      def order_quantity
        read_property(:order_quantity)
      end

      # The number of the item ordered. If the property is not set, assume the quantity is one.
      def order_quantity=(value)
        write_property(:order_quantity, value)
      end

      # The item ordered.
      def ordered_item
        read_property(:ordered_item)
      end

      # The item ordered.
      def ordered_item=(value)
        write_property(:ordered_item, value)
      end
    end
  end
end
