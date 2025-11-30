require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeliveryTimeSettings
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :delivery_time, optional: true # The total delay between the receipt of the order and the goods reaching the final customer.
        option :is_unlabelled_fallback, optional: true # This can be marked 'true' to indicate that some published [[DeliveryTimeSettings]] or [[ShippingRateSettings]] are intended to apply to all [[OfferShippingDetails]] published by the same merchant, when referenced by a [[shippingSettingsLink]] in those settings. It is not meaningful to use a 'true' value for this property alongside a transitTimeLabel (for [[DeliveryTimeSettings]]) or shippingLabel (for [[ShippingRateSettings]]), since this property is for use with unlabelled settings.
        option :shipping_destination, optional: true # indicates (possibly multiple) shipping destinations. These can be defined in several ways, e.g. postalCode ranges.
        option :transit_time_label, optional: true # Label to match an [[OfferShippingDetails]] with a [[DeliveryTimeSettings]] (within the context of a [[shippingSettingsLink]] cross-reference).
      end
    end
  end
end
