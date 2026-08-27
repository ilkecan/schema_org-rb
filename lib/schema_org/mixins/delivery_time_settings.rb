# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module DeliveryTimeSettings
      include StructuredValue

      def self.schema_property_definitions
        {
          delivery_time: {
            schema_name: "deliveryTime",
            schema_url: "https://schema.org/deliveryTime",
            comment_lines: ["The total delay between the receipt of the order and the goods reaching the final customer."].freeze,
            ranges: ["ShippingDeliveryTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_unlabelled_fallback: {
            schema_name: "isUnlabelledFallback",
            schema_url: "https://schema.org/isUnlabelledFallback",
            comment_lines: ["This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings."].freeze,
            ranges: ["Boolean"].freeze,
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
          transit_time_label: {
            schema_name: "transitTimeLabel",
            schema_url: "https://schema.org/transitTimeLabel",
            comment_lines: ["Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The total delay between the receipt of the order and the goods reaching the final customer.
      def delivery_time
        read_property(:delivery_time)
      end

      # The total delay between the receipt of the order and the goods reaching the final customer.
      def delivery_time=(value)
        write_property(:delivery_time, value)
      end

      # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
      def is_unlabelled_fallback
        read_property(:is_unlabelled_fallback)
      end

      # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
      def is_unlabelled_fallback=(value)
        write_property(:is_unlabelled_fallback, value)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination
        read_property(:shipping_destination)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination=(value)
        write_property(:shipping_destination, value)
      end

      # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def transit_time_label
        read_property(:transit_time_label)
      end

      # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def transit_time_label=(value)
        write_property(:transit_time_label, value)
      end
    end
  end
end
