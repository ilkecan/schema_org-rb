# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ShippingService
      include StructuredValue

      def self.schema_property_definitions
        {
          fulfillment_type: {
            schema_name: "fulfillmentType",
            schema_url: "https://schema.org/fulfillmentType",
            comment_lines: ["Type of fulfillment applicable to the [[ShippingService]]."].freeze,
            ranges: ["FulfillmentTypeEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          handling_time: {
            schema_name: "handlingTime",
            schema_url: "https://schema.org/handlingTime",
            comment_lines: ["The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.", "", "In the context of [[ShippingDeliveryTime]], Typical properties: minValue, maxValue, unitCode (d for DAY).  This is by common convention assumed to mean business days (if a unitCode is used, coded as \"d\"), i.e. only counting days when the business normally operates.", "", "In the context of [[ShippingService]], use the [[ServicePeriod]] format, that contains the same information in a structured form, with cut-off time, business days and duration."].freeze,
            ranges: ["QuantitativeValue", "ServicePeriod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          shipping_conditions: {
            schema_name: "shippingConditions",
            schema_url: "https://schema.org/shippingConditions",
            comment_lines: ["The conditions (constraints, price) applicable to the [[ShippingService]]."].freeze,
            ranges: ["ShippingConditions"].freeze,
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
          }.freeze
        }.freeze
      end

      # Type of fulfillment applicable to the [[ShippingService]].
      def fulfillment_type
        read_property(:fulfillment_type)
      end

      # Type of fulfillment applicable to the [[ShippingService]].
      def fulfillment_type=(value)
        write_property(:fulfillment_type, value)
      end

      # The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
      #
      # In the context of [[ShippingDeliveryTime]], Typical properties: minValue, maxValue, unitCode (d for DAY).  This is by common convention assumed to mean business days (if a unitCode is used, coded as "d"), i.e. only counting days when the business normally operates.
      #
      # In the context of [[ShippingService]], use the [[ServicePeriod]] format, that contains the same information in a structured form, with cut-off time, business days and duration.
      def handling_time
        read_property(:handling_time)
      end

      # The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
      #
      # In the context of [[ShippingDeliveryTime]], Typical properties: minValue, maxValue, unitCode (d for DAY).  This is by common convention assumed to mean business days (if a unitCode is used, coded as "d"), i.e. only counting days when the business normally operates.
      #
      # In the context of [[ShippingService]], use the [[ServicePeriod]] format, that contains the same information in a structured form, with cut-off time, business days and duration.
      def handling_time=(value)
        write_property(:handling_time, value)
      end

      # The conditions (constraints, price) applicable to the [[ShippingService]].
      def shipping_conditions
        read_property(:shipping_conditions)
      end

      # The conditions (constraints, price) applicable to the [[ShippingService]].
      def shipping_conditions=(value)
        write_property(:shipping_conditions, value)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier
        read_property(:valid_for_member_tier)
      end

      # The membership program tier(s) an Offer (or a PriceSpecification, OfferShippingDetails, or MerchantReturnPolicy under an Offer) is valid for.
      def valid_for_member_tier=(value)
        write_property(:valid_for_member_tier, value)
      end
    end
  end
end
