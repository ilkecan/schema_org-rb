# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module OfferShippingDetails
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
          has_shipping_service: {
            schema_name: "hasShippingService",
            schema_url: "https://schema.org/hasShippingService",
            comment_lines: ["Specification of a shipping service offered by the organization."].freeze,
            ranges: ["ShippingService"].freeze,
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
          shipping_settings_link: {
            schema_name: "shippingSettingsLink",
            schema_url: "https://schema.org/shippingSettingsLink",
            comment_lines: ["Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details."].freeze,
            ranges: ["URL"].freeze,
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
          }.freeze,
          valid_for_member_tier: {
            schema_name: "validForMemberTier",
            schema_url: "https://schema.org/validForMemberTier",
            comment_lines: ["The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for."].freeze,
            ranges: ["MemberProgramTier"].freeze,
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

      # The total delay between the receipt of the order and the goods reaching the final customer.
      def delivery_time
        read_property(:delivery_time)
      end

      # The total delay between the receipt of the order and the goods reaching the final customer.
      def delivery_time=(value)
        write_property(:delivery_time, value)
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

      # Specification of a shipping service offered by the organization.
      def has_shipping_service
        read_property(:has_shipping_service)
      end

      # Specification of a shipping service offered by the organization.
      def has_shipping_service=(value)
        write_property(:has_shipping_service, value)
      end

      # The height of the item.
      def height
        read_property(:height)
      end

      # The height of the item.
      def height=(value)
        write_property(:height, value)
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

      # Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details.
      def shipping_settings_link
        read_property(:shipping_settings_link)
      end

      # Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details.
      def shipping_settings_link=(value)
        write_property(:shipping_settings_link, value)
      end

      # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def transit_time_label
        read_property(:transit_time_label)
      end

      # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      def transit_time_label=(value)
        write_property(:transit_time_label, value)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier
        read_property(:valid_for_member_tier)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier=(value)
        write_property(:valid_for_member_tier, value)
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
