module SchemaOrg
  module Mixins
    module OfferShippingDetails
      include StructuredValue

      def self.schema_property_definitions
        {
          :delivery_time => {
            schema_name: "deliveryTime",
            ranges: ["ShippingDeliveryTime"],
          }.freeze,
          :depth => {
            schema_name: "depth",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :does_not_ship => {
            schema_name: "doesNotShip",
            ranges: ["Boolean"],
          }.freeze,
          :height => {
            schema_name: "height",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
          :shipping_destination => {
            schema_name: "shippingDestination",
            ranges: ["DefinedRegion"],
          }.freeze,
          :shipping_label => {
            schema_name: "shippingLabel",
            ranges: ["Text"],
          }.freeze,
          :shipping_origin => {
            schema_name: "shippingOrigin",
            ranges: ["DefinedRegion"],
          }.freeze,
          :shipping_rate => {
            schema_name: "shippingRate",
            ranges: ["MonetaryAmount"],
          }.freeze,
          :shipping_settings_link => {
            schema_name: "shippingSettingsLink",
            ranges: ["URL"],
          }.freeze,
          :transit_time_label => {
            schema_name: "transitTimeLabel",
            ranges: ["Text"],
          }.freeze,
          :weight => {
            schema_name: "weight",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :width => {
            schema_name: "width",
            ranges: ["Distance", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def delivery_time
        read_property(:delivery_time)
      end

      def delivery_time=(value)
        write_property(:delivery_time, value)
      end

      def depth
        read_property(:depth)
      end

      def depth=(value)
        write_property(:depth, value)
      end

      def does_not_ship
        read_property(:does_not_ship)
      end

      def does_not_ship=(value)
        write_property(:does_not_ship, value)
      end

      def height
        read_property(:height)
      end

      def height=(value)
        write_property(:height, value)
      end

      def shipping_destination
        read_property(:shipping_destination)
      end

      def shipping_destination=(value)
        write_property(:shipping_destination, value)
      end

      def shipping_label
        read_property(:shipping_label)
      end

      def shipping_label=(value)
        write_property(:shipping_label, value)
      end

      def shipping_origin
        read_property(:shipping_origin)
      end

      def shipping_origin=(value)
        write_property(:shipping_origin, value)
      end

      def shipping_rate
        read_property(:shipping_rate)
      end

      def shipping_rate=(value)
        write_property(:shipping_rate, value)
      end

      def shipping_settings_link
        read_property(:shipping_settings_link)
      end

      def shipping_settings_link=(value)
        write_property(:shipping_settings_link, value)
      end

      def transit_time_label
        read_property(:transit_time_label)
      end

      def transit_time_label=(value)
        write_property(:transit_time_label, value)
      end

      def weight
        read_property(:weight)
      end

      def weight=(value)
        write_property(:weight, value)
      end

      def width
        read_property(:width)
      end

      def width=(value)
        write_property(:width, value)
      end

    end
  end
end
