module SchemaOrg
  module Mixins
    module DeliveryTimeSettings
      include StructuredValue

      def self.schema_property_definitions
        {
          :delivery_time => {
            schema_name: "deliveryTime",
            ranges: ["ShippingDeliveryTime"],
          }.freeze,
          :is_unlabelled_fallback => {
            schema_name: "isUnlabelledFallback",
            ranges: ["Boolean"],
          }.freeze,
          :shipping_destination => {
            schema_name: "shippingDestination",
            ranges: ["DefinedRegion"],
          }.freeze,
          :transit_time_label => {
            schema_name: "transitTimeLabel",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def delivery_time
        read_property(:delivery_time)
      end

      def delivery_time=(value)
        write_property(:delivery_time, value)
      end

      def is_unlabelled_fallback
        read_property(:is_unlabelled_fallback)
      end

      def is_unlabelled_fallback=(value)
        write_property(:is_unlabelled_fallback, value)
      end

      def shipping_destination
        read_property(:shipping_destination)
      end

      def shipping_destination=(value)
        write_property(:shipping_destination, value)
      end

      def transit_time_label
        read_property(:transit_time_label)
      end

      def transit_time_label=(value)
        write_property(:transit_time_label, value)
      end

    end
  end
end
