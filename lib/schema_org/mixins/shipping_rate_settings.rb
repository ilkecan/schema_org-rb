module SchemaOrg
  module Mixins
    module ShippingRateSettings
      include StructuredValue

      def self.schema_property_definitions
        {
          :does_not_ship => {
            schema_name: "doesNotShip",
            ranges: ["Boolean"],
          }.freeze,
          :free_shipping_threshold => {
            schema_name: "freeShippingThreshold",
            ranges: ["DeliveryChargeSpecification", "MonetaryAmount"],
          }.freeze,
          :is_unlabelled_fallback => {
            schema_name: "isUnlabelledFallback",
            ranges: ["Boolean"],
          }.freeze,
          :shipping_destination => {
            schema_name: "shippingDestination",
            ranges: ["DefinedRegion"],
          }.freeze,
          :shipping_label => {
            schema_name: "shippingLabel",
            ranges: ["Text"],
          }.freeze,
          :shipping_rate => {
            schema_name: "shippingRate",
            ranges: ["MonetaryAmount"],
          }.freeze,
        }.freeze
      end

      def does_not_ship
        read_property(:does_not_ship)
      end

      def does_not_ship=(value)
        write_property(:does_not_ship, value)
      end

      def free_shipping_threshold
        read_property(:free_shipping_threshold)
      end

      def free_shipping_threshold=(value)
        write_property(:free_shipping_threshold, value)
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

      def shipping_label
        read_property(:shipping_label)
      end

      def shipping_label=(value)
        write_property(:shipping_label, value)
      end

      def shipping_rate
        read_property(:shipping_rate)
      end

      def shipping_rate=(value)
        write_property(:shipping_rate, value)
      end

    end
  end
end
