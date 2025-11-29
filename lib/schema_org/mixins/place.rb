require "active_support/concern"

module SchemaOrg
  module Mixins
    module Place
      extend ActiveSupport::Concern

      include Thing

      included do
        option :additional_property # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
        option :address # Physical address of the item.
        option :aggregate_rating # The overall rating, based on a collection of reviews or ratings, of the item.
        option :amenity_feature # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
        option :branch_code # A short textual code (also called "store code") that uniquely identifies a place of business. The code is typically assigned by the parentOrganization and used in structured URLs.\n\nFor example, in the URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is a branchCode for a particular branch.
        option :contained_in # The basic containment relation between a place and one that contains it.
        option :events # Upcoming or past events associated with this place or organization.
        option :fax_number # The fax number.
        option :geo # The geo coordinates of the place.
        option :global_location_number # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
        option :isic_v4 # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
        option :keywords # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
        option :latitude # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
        option :logo # An associated logo.
        option :longitude # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
        option :map # A URL to a map of the place.
        option :maps # A URL to a map of the place.
        option :maximum_attendee_capacity # The total number of individuals that may attend an event or venue.
        option :opening_hours_specification # The opening hours of a certain place.
        option :photos # Photographs of this place.
        option :public_access # A flag to signal that the [[Place]] is open to public visitors.  If this property is omitted there is no assumed default boolean value.
        option :reviews # Review of the item.
        option :slogan # A slogan or motto associated with the item.
        option :smoking_allowed # Indicates whether it is allowed to smoke in the place, e.g. in the restaurant, hotel or hotel room.
        option :special_opening_hours_specification # The special opening hours of a certain place.\n\nUse this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].
        option :telephone # The telephone number.
        option :contains_place # The basic containment relation between a place and another that it contains.
        option :event # Upcoming or past event associated with this place, organization, or action.
        option :is_accessible_for_free # A flag to signal that the item, event, or place is accessible for free.
        option :photo # A photograph of this place.
        option :review # A review of the item.
        option :contained_in_place # The basic containment relation between a place and one that contains it.
        option :has_map # A URL to a map of the place.
      end
    end
  end
end
