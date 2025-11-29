require "active_support/concern"

module SchemaOrg
  module Mixins
    module OfferShippingDetails
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :delivery_time # The total delay between the receipt of the order and the goods reaching the final customer.
        option :depth # The depth of the item.
        option :does_not_ship # Indicates when shipping to a particular [[shippingDestination]] is not available.
        option :height # The height of the item.
        option :shipping_destination # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
        option :shipping_label # Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
        option :shipping_origin # Indicates the origin of a shipment, i.e. where it should be coming from.
        option :shipping_rate # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
        option :shipping_settings_link # Link to a page containing [[ShippingRateSettings]] and [[DeliveryTimeSettings]] details.
        option :transit_time_label # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
        option :weight # The weight of the product or person.
        option :width # The width of the item.
      end
    end
  end
end
