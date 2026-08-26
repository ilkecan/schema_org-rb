# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ShippingRateSettings
      include StructuredValue

      def self.schema_property_definitions
        {
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
          free_shipping_threshold: {
            schema_name: "freeShippingThreshold",
            schema_url: "https://schema.org/freeShippingThreshold",
            comment_lines: ["A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an [[OfferShippingDetails]] with [[shippingSettingsLink]] matching this [[ShippingRateSettings]]."].freeze,
            ranges: ["DeliveryChargeSpecification", "MonetaryAmount"].freeze,
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
          order_percentage: {
            schema_name: "orderPercentage",
            schema_url: "https://schema.org/orderPercentage",
            comment_lines: ["Value representing the fraction of the value of the order that is charged as shipping cost. Example: 0.10 would mean shipping rate is 10% of the total order value."].freeze,
            ranges: ["Number"].freeze,
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
          shipping_label: {
            schema_name: "shippingLabel",
            schema_url: "https://schema.org/shippingLabel",
            comment_lines: ["Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference)."].freeze,
            ranges: ["Text"].freeze,
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
          weight_percentage: {
            schema_name: "weightPercentage",
            schema_url: "https://schema.org/weightPercentage",
            comment_lines: ["Value representing the fraction of the weight that is used to compute the shipping price. Example: 0.10 and a shipping weight of 15kg would add $1.5 to the order price, where the $ is the currency of the order."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates when shipping to a particular [[shippingDestination]] is not available.
      def does_not_ship
        read_property(:does_not_ship)
      end

      # Indicates when shipping to a particular [[shippingDestination]] is not available.
      def does_not_ship=(value)
        write_property(:does_not_ship, value)
      end

      # A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an [[OfferShippingDetails]] with [[shippingSettingsLink]] matching this [[ShippingRateSettings]].
      def free_shipping_threshold
        read_property(:free_shipping_threshold)
      end

      # A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an [[OfferShippingDetails]] with [[shippingSettingsLink]] matching this [[ShippingRateSettings]].
      def free_shipping_threshold=(value)
        write_property(:free_shipping_threshold, value)
      end

      # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
      def is_unlabelled_fallback
        read_property(:is_unlabelled_fallback)
      end

      # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
      def is_unlabelled_fallback=(value)
        write_property(:is_unlabelled_fallback, value)
      end

      # Value representing the fraction of the value of the order that is charged as shipping cost. Example: 0.10 would mean shipping rate is 10% of the total order value.
      def order_percentage
        read_property(:order_percentage)
      end

      # Value representing the fraction of the value of the order that is charged as shipping cost. Example: 0.10 would mean shipping rate is 10% of the total order value.
      def order_percentage=(value)
        write_property(:order_percentage, value)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination
        read_property(:shipping_destination)
      end

      # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
      def shipping_destination=(value)
        write_property(:shipping_destination, value)
      end

      # Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def shipping_label
        read_property(:shipping_label)
      end

      # Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def shipping_label=(value)
        write_property(:shipping_label, value)
      end

      # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
      def shipping_rate
        read_property(:shipping_rate)
      end

      # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
      def shipping_rate=(value)
        write_property(:shipping_rate, value)
      end

      # Value representing the fraction of the weight that is used to compute the shipping price. Example: 0.10 and a shipping weight of 15kg would add $1.5 to the order price, where the $ is the currency of the order.
      def weight_percentage
        read_property(:weight_percentage)
      end

      # Value representing the fraction of the weight that is used to compute the shipping price. Example: 0.10 and a shipping weight of 15kg would add $1.5 to the order price, where the $ is the currency of the order.
      def weight_percentage=(value)
        write_property(:weight_percentage, value)
      end
    end
  end
end
