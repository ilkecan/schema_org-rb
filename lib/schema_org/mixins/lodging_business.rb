require "active_support/concern"

module SchemaOrg
  module Mixins
    module LodgingBusiness
      extend ActiveSupport::Concern

      include LocalBusiness

      included do
        option :amenity_feature, optional: true # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
        option :available_language, optional: true # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
        option :checkin_time, optional: true # The earliest someone may check into a lodging establishment.
        option :checkout_time, optional: true # The latest someone may check out of a lodging establishment.
        option :number_of_rooms, optional: true # The number of rooms (excluding bathrooms and closets) of the accommodation or lodging business. Typical unit code(s): ROM for room or C62 for no unit. The type of room can be put in the unitText property of the QuantitativeValue.
        option :pets_allowed, optional: true # Indicates whether pets are allowed to enter the accommodation or lodging business. More detailed information can be put in a text value.
        option :star_rating, optional: true # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
        option :audience, optional: true # An intended audience, i.e. a group for whom something was created. Supersedes `service_audience`.
      end
    end
  end
end
