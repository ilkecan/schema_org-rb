require "active_support/concern"

module SchemaOrg
  module Mixins
    module DeliveryChargeSpecification
      extend ActiveSupport::Concern

      include PriceSpecification

      included do
        option :applies_to_delivery_method # The delivery method(s) to which the delivery charge or payment charge specification applies.
        option :eligible_region # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
        option :ineligible_region # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.\n\nSee also [[eligibleRegion]].
        option :area_served # The geographic area where a service or offered item is provided.
      end
    end
  end
end
