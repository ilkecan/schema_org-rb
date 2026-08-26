module SchemaOrg
  module Mixins
    module Place
      include Thing

      def self.schema_property_definitions
        {
          :additional_property => {
            schema_name: "additionalProperty",
            ranges: ["PropertyValue"],
          }.freeze,
          :address => {
            schema_name: "address",
            ranges: ["PostalAddress", "Text"],
          }.freeze,
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :amenity_feature => {
            schema_name: "amenityFeature",
            ranges: ["LocationFeatureSpecification"],
          }.freeze,
          :branch_code => {
            schema_name: "branchCode",
            ranges: ["Text"],
          }.freeze,
          :contained_in => {
            schema_name: "containedIn",
            ranges: ["Place"],
          }.freeze,
          :contained_in_place => {
            schema_name: "containedInPlace",
            ranges: ["Place"],
          }.freeze,
          :contains_place => {
            schema_name: "containsPlace",
            ranges: ["Place"],
          }.freeze,
          :event => {
            schema_name: "event",
            ranges: ["Event"],
          }.freeze,
          :events => {
            schema_name: "events",
            ranges: ["Event"],
          }.freeze,
          :fax_number => {
            schema_name: "faxNumber",
            ranges: ["Text"],
          }.freeze,
          :geo => {
            schema_name: "geo",
            ranges: ["GeoCoordinates", "GeoShape"],
          }.freeze,
          :global_location_number => {
            schema_name: "globalLocationNumber",
            ranges: ["Text"],
          }.freeze,
          :has_map => {
            schema_name: "hasMap",
            ranges: ["Map", "URL"],
          }.freeze,
          :is_accessible_for_free => {
            schema_name: "isAccessibleForFree",
            ranges: ["Boolean"],
          }.freeze,
          :isic_v4 => {
            schema_name: "isicV4",
            ranges: ["Text"],
          }.freeze,
          :keywords => {
            schema_name: "keywords",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :latitude => {
            schema_name: "latitude",
            ranges: ["Number", "Text"],
          }.freeze,
          :logo => {
            schema_name: "logo",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :longitude => {
            schema_name: "longitude",
            ranges: ["Number", "Text"],
          }.freeze,
          :map => {
            schema_name: "map",
            ranges: ["URL"],
          }.freeze,
          :maps => {
            schema_name: "maps",
            ranges: ["URL"],
          }.freeze,
          :maximum_attendee_capacity => {
            schema_name: "maximumAttendeeCapacity",
            ranges: ["Integer"],
          }.freeze,
          :opening_hours_specification => {
            schema_name: "openingHoursSpecification",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :photo => {
            schema_name: "photo",
            ranges: ["ImageObject", "Photograph"],
          }.freeze,
          :photos => {
            schema_name: "photos",
            ranges: ["ImageObject", "Photograph"],
          }.freeze,
          :public_access => {
            schema_name: "publicAccess",
            ranges: ["Boolean"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :reviews => {
            schema_name: "reviews",
            ranges: ["Review"],
          }.freeze,
          :slogan => {
            schema_name: "slogan",
            ranges: ["Text"],
          }.freeze,
          :smoking_allowed => {
            schema_name: "smokingAllowed",
            ranges: ["Boolean"],
          }.freeze,
          :special_opening_hours_specification => {
            schema_name: "specialOpeningHoursSpecification",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :telephone => {
            schema_name: "telephone",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def additional_property
        read_property(:additional_property)
      end

      def additional_property=(value)
        write_property(:additional_property, value)
      end

      def address
        read_property(:address)
      end

      def address=(value)
        write_property(:address, value)
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def amenity_feature
        read_property(:amenity_feature)
      end

      def amenity_feature=(value)
        write_property(:amenity_feature, value)
      end

      def branch_code
        read_property(:branch_code)
      end

      def branch_code=(value)
        write_property(:branch_code, value)
      end

      def contained_in
        read_property(:contained_in)
      end

      def contained_in=(value)
        write_property(:contained_in, value)
      end

      def contained_in_place
        read_property(:contained_in_place)
      end

      def contained_in_place=(value)
        write_property(:contained_in_place, value)
      end

      def contains_place
        read_property(:contains_place)
      end

      def contains_place=(value)
        write_property(:contains_place, value)
      end

      def event
        read_property(:event)
      end

      def event=(value)
        write_property(:event, value)
      end

      def events
        read_property(:events)
      end

      def events=(value)
        write_property(:events, value)
      end

      def fax_number
        read_property(:fax_number)
      end

      def fax_number=(value)
        write_property(:fax_number, value)
      end

      def geo
        read_property(:geo)
      end

      def geo=(value)
        write_property(:geo, value)
      end

      def global_location_number
        read_property(:global_location_number)
      end

      def global_location_number=(value)
        write_property(:global_location_number, value)
      end

      def has_map
        read_property(:has_map)
      end

      def has_map=(value)
        write_property(:has_map, value)
      end

      def is_accessible_for_free
        read_property(:is_accessible_for_free)
      end

      def is_accessible_for_free=(value)
        write_property(:is_accessible_for_free, value)
      end

      def isic_v4
        read_property(:isic_v4)
      end

      def isic_v4=(value)
        write_property(:isic_v4, value)
      end

      def keywords
        read_property(:keywords)
      end

      def keywords=(value)
        write_property(:keywords, value)
      end

      def latitude
        read_property(:latitude)
      end

      def latitude=(value)
        write_property(:latitude, value)
      end

      def logo
        read_property(:logo)
      end

      def logo=(value)
        write_property(:logo, value)
      end

      def longitude
        read_property(:longitude)
      end

      def longitude=(value)
        write_property(:longitude, value)
      end

      def map
        read_property(:map)
      end

      def map=(value)
        write_property(:map, value)
      end

      def maps
        read_property(:maps)
      end

      def maps=(value)
        write_property(:maps, value)
      end

      def maximum_attendee_capacity
        read_property(:maximum_attendee_capacity)
      end

      def maximum_attendee_capacity=(value)
        write_property(:maximum_attendee_capacity, value)
      end

      def opening_hours_specification
        read_property(:opening_hours_specification)
      end

      def opening_hours_specification=(value)
        write_property(:opening_hours_specification, value)
      end

      def photo
        read_property(:photo)
      end

      def photo=(value)
        write_property(:photo, value)
      end

      def photos
        read_property(:photos)
      end

      def photos=(value)
        write_property(:photos, value)
      end

      def public_access
        read_property(:public_access)
      end

      def public_access=(value)
        write_property(:public_access, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def reviews
        read_property(:reviews)
      end

      def reviews=(value)
        write_property(:reviews, value)
      end

      def slogan
        read_property(:slogan)
      end

      def slogan=(value)
        write_property(:slogan, value)
      end

      def smoking_allowed
        read_property(:smoking_allowed)
      end

      def smoking_allowed=(value)
        write_property(:smoking_allowed, value)
      end

      def special_opening_hours_specification
        read_property(:special_opening_hours_specification)
      end

      def special_opening_hours_specification=(value)
        write_property(:special_opening_hours_specification, value)
      end

      def telephone
        read_property(:telephone)
      end

      def telephone=(value)
        write_property(:telephone, value)
      end

    end
  end
end
