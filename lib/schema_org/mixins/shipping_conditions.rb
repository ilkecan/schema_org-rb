# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ShippingConditions
      include StructuredValue

      def self.schema_property_definitions
        {
          depth: {
            schema_name: "depth",
            schema_url: "https://schema.org/depth",
            comment_lines: ["The depth of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          does_not_ship: {
            schema_name: "doesNotShip",
            schema_url: "https://schema.org/doesNotShip",
            comment_lines: ["Indicates when shipping to a particular [[shippingDestination]] is not available."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          height: {
            schema_name: "height",
            schema_url: "https://schema.org/height",
            comment_lines: ["The height of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          num_items: {
            schema_name: "numItems",
            schema_url: "https://schema.org/numItems",
            comment_lines: ["Limits the number of items being shipped for which these conditions apply."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_value: {
            schema_name: "orderValue",
            schema_url: "https://schema.org/orderValue",
            comment_lines: ["Minimum and maximum order value for which these shipping conditions are valid."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seasonal_override: {
            schema_name: "seasonalOverride",
            schema_url: "https://schema.org/seasonalOverride",
            comment_lines: ["Limited period during which these shipping conditions apply."].freeze,
            ranges: ["OpeningHoursSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shipping_destination: {
            schema_name: "shippingDestination",
            schema_url: "https://schema.org/shippingDestination",
            comment_lines: ["indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges."].freeze,
            ranges: ["DefinedRegion"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shipping_origin: {
            schema_name: "shippingOrigin",
            schema_url: "https://schema.org/shippingOrigin",
            comment_lines: ["Indicates the origin of a shipment, i.e. where it should be coming from."].freeze,
            ranges: ["DefinedRegion"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shipping_rate: {
            schema_name: "shippingRate",
            schema_url: "https://schema.org/shippingRate",
            comment_lines: ["The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate."].freeze,
            ranges: ["MonetaryAmount", "ShippingRateSettings"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          transit_time: {
            schema_name: "transitTime",
            schema_url: "https://schema.org/transitTime",
            comment_lines: ["The typical delay the order has been sent for delivery and the goods reach the final customer.", "", "  In the context of [[ShippingDeliveryTime]], use the [[QuantitativeValue]]. Typical properties: minValue, maxValue, unitCode (d for DAY).", "", "  In the context of [[ShippingConditions]], use the [[ServicePeriod]]. It has a duration (as a [[QuantitativeValue]]) and also business days and a cut-off time."].freeze,
            ranges: ["QuantitativeValue", "ServicePeriod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          weight: {
            schema_name: "weight",
            schema_url: "https://schema.org/weight",
            comment_lines: ["The weight of the product or person."].freeze,
            ranges: ["Mass", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          width: {
            schema_name: "width",
            schema_url: "https://schema.org/width",
            comment_lines: ["The width of the item."].freeze,
            ranges: ["Distance", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The depth of the item.
      def depth
        read_property(:depth)
      end

      # The depth of the item.
      def depth=(value)
        write_property(:depth, value)
      end

      # Indicates when shipping to a particular [[shippingDestination]] is not available.
      def does_not_ship
        read_property(:does_not_ship)
      end

      # Indicates when shipping to a particular [[shippingDestination]] is not available.
      def does_not_ship=(value)
        write_property(:does_not_ship, value)
      end

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
      end

      # Limits the number of items being shipped for which these conditions apply.
      def num_items
        read_property(:num_items)
      end

      # Limits the number of items being shipped for which these conditions apply.
      def num_items=(value)
        write_property(:num_items, value)
      end

      # Minimum and maximum order value for which these shipping conditions are valid.
      def order_value
        read_property(:order_value)
      end

      # Minimum and maximum order value for which these shipping conditions are valid.
      def order_value=(value)
        write_property(:order_value, value)
      end

      # Limited period during which these shipping conditions apply.
      def seasonal_override
        read_property(:seasonal_override)
      end

      # Limited period during which these shipping conditions apply.
      def seasonal_override=(value)
        write_property(:seasonal_override, value)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination
        read_property(:shipping_destination)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination=(value)
        write_property(:shipping_destination, value)
      end

      # Indicates the origin of a shipment, i.e. where it should be coming from.
      def shipping_origin
        read_property(:shipping_origin)
      end

      # Indicates the origin of a shipment, i.e. where it should be coming from.
      def shipping_origin=(value)
        write_property(:shipping_origin, value)
      end

      # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
      def shipping_rate
        read_property(:shipping_rate)
      end

      # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
      def shipping_rate=(value)
        write_property(:shipping_rate, value)
      end

      # The typical delay the order has been sent for delivery and the goods reach the final customer.
      #
      #   In the context of [[ShippingDeliveryTime]], use the [[QuantitativeValue]]. Typical properties: minValue, maxValue, unitCode (d for DAY).
      #
      #   In the context of [[ShippingConditions]], use the [[ServicePeriod]]. It has a duration (as a [[QuantitativeValue]]) and also business days and a cut-off time.
      def transit_time
        read_property(:transit_time)
      end

      # The typical delay the order has been sent for delivery and the goods reach the final customer.
      #
      #   In the context of [[ShippingDeliveryTime]], use the [[QuantitativeValue]]. Typical properties: minValue, maxValue, unitCode (d for DAY).
      #
      #   In the context of [[ShippingConditions]], use the [[ServicePeriod]]. It has a duration (as a [[QuantitativeValue]]) and also business days and a cut-off time.
      def transit_time=(value)
        write_property(:transit_time, value)
      end

      # The weight of the product or person.
      def weight
        read_property(:weight)
      end

      # The weight of the product or person.
      def weight=(value)
        write_property(:weight, value)
      end

      # The width of the item.
      def width
        read_property(:width)
      end

      # The width of the item.
      def width=(value)
        write_property(:width, value)
      end
    end
  end
end
