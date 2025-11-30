require "active_support/concern"

module SchemaOrg
  module Mixins
    module OfferShippingDetails
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :delivery_time, optional: true # The total delay between the receipt of the order and the goods reaching the final customer.
        option :depth, optional: true # The depth of the item.
        option :does_not_ship, optional: true # Indicates when shipping to a particular [[shippingDestination]] is not available.
        option :height, optional: true # The height of the item.
        option :shipping_destination, optional: true # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
        option :shipping_label, optional: true # Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
        option :shipping_origin, optional: true # Indicates the origin of a shipment, i.e. where it should be coming from.
        option :shipping_rate, optional: true # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
        option :shipping_settings_link, optional: true # Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details.
        option :transit_time_label, optional: true # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
        option :weight, optional: true # The weight of the product or person.
        option :width, optional: true # The width of the item.
      end
    end
  end
end
