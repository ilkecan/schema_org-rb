require "active_support/concern"

module SchemaOrg
  module Mixins
    module ActionAccessSpecification
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :availability_ends # The end of the availability of the product or service included in the offer.
        option :availability_starts # The beginning of the availability of the product or service included in the offer.
        option :category # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
        option :eligible_region # The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.\n\nSee also [[ineligibleRegion]].
        option :expects_acceptance_of # An Offer which must be accepted before the user can perform the Action. For example, the user may need to buy a movie before being able to watch it.
        option :requires_subscription # Indicates if use of the media require a subscription  (either paid or free). Allowed values are ```true``` or ```false``` (note that an earlier version had 'yes', 'no').
      end
    end
  end
end
