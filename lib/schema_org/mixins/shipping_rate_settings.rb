require "active_support/concern"

module SchemaOrg
  module Mixins
    module ShippingRateSettings
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :does_not_ship, optional: true # Indicates when shipping to a particular [[shippingDestination]] is not available.
        option :free_shipping_threshold, optional: true # A monetary value above (or at) which the shipping rate becomes free. Intended to be used via an [[OfferShippingDetails]] with [[shippingSettingsLink]] matching this [[ShippingRateSettings]].
        option :is_unlabelled_fallback, optional: true # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
        option :shipping_destination, optional: true # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
        option :shipping_label, optional: true # Label to match an [[OfferShippingDetails]] with a [[ShippingRateSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
        option :shipping_rate, optional: true # The shipping rate is the cost of shipping to the specified destination. Typically, the maxValue and currency values (of the [[MonetaryAmount]]) are most appropriate.
      end
    end
  end
end
