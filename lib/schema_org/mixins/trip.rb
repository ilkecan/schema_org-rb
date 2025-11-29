require "active_support/concern"

module SchemaOrg
  module Mixins
    module Trip
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :arrival_time # The expected arrival time.
        option :departure_time # The expected departure time.
        option :trip_origin # The location of origin of the trip, prior to any destination(s).
        option :offers # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
        option :provider # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      end
    end
  end
end
