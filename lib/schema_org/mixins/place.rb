# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Place
      include Thing

      def self.schema_property_definitions
        {
          additional_property: {
            schema_name: "additionalProperty",
            schema_url: "https://schema.org/additionalProperty",
            comment_lines: ["A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism."].freeze,
            ranges: ["PropertyValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          address: {
            schema_name: "address",
            schema_url: "https://schema.org/address",
            comment_lines: ["Physical address of the item."].freeze,
            ranges: ["PostalAddress", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          aggregate_rating: {
            schema_name: "aggregateRating",
            schema_url: "https://schema.org/aggregateRating",
            comment_lines: ["The overall rating, based on a collection of reviews or ratings, of the item."].freeze,
            ranges: ["AggregateRating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          amenity_feature: {
            schema_name: "amenityFeature",
            schema_url: "https://schema.org/amenityFeature",
            comment_lines: ["An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs."].freeze,
            ranges: ["LocationFeatureSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          branch_code: {
            schema_name: "branchCode",
            schema_url: "https://schema.org/branchCode",
            comment_lines: ["A short textual code (also called \"store code\") that uniquely identifies a place of business. The code is typically assigned by the parentOrganization and used in structured URLs.\\n\\nFor example, in the URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code \"3047\" is a branchCode for a particular branch."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contained_in: {
            schema_name: "containedIn",
            schema_url: "https://schema.org/containedIn",
            comment_lines: ["The basic containment relation between a place and one that contains it."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "containedInPlace",
            supersedes: nil
          }.freeze,
          contained_in_place: {
            schema_name: "containedInPlace",
            schema_url: "https://schema.org/containedInPlace",
            comment_lines: ["The basic containment relation between a place and one that contains it."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: "containsPlace",
            superseded_by: nil,
            supersedes: "containedIn"
          }.freeze,
          contains_place: {
            schema_name: "containsPlace",
            schema_url: "https://schema.org/containsPlace",
            comment_lines: ["The basic containment relation between a place and another that it contains."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: "containedInPlace",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          event: {
            schema_name: "event",
            schema_url: "https://schema.org/event",
            comment_lines: ["Upcoming or past event associated with this place, organization, or action."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "events"
          }.freeze,
          events: {
            schema_name: "events",
            schema_url: "https://schema.org/events",
            comment_lines: ["Upcoming or past events associated with this place or organization."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "event",
            supersedes: nil
          }.freeze,
          fax_number: {
            schema_name: "faxNumber",
            schema_url: "https://schema.org/faxNumber",
            comment_lines: ["The fax number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo: {
            schema_name: "geo",
            schema_url: "https://schema.org/geo",
            comment_lines: ["The geo coordinates of the place."].freeze,
            ranges: ["GeoCoordinates", "GeoShape"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_contains: {
            schema_name: "geoContains",
            schema_url: "https://schema.org/geoContains",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a containing geometry to a contained geometry. \"a contains b iff no points of b lie in the exterior of a, and at least one point of the interior of b lies in the interior of a\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_covered_by: {
            schema_name: "geoCoveredBy",
            schema_url: "https://schema.org/geoCoveredBy",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a geometry to another that covers it. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_covers: {
            schema_name: "geoCovers",
            schema_url: "https://schema.org/geoCovers",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a covering geometry to a covered geometry. \"Every point of b is a point of (the interior or boundary of) a\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_crosses: {
            schema_name: "geoCrosses",
            schema_url: "https://schema.org/geoCrosses",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a geometry to another that crosses it: \"a crosses b: they have some but not all interior points in common, and the dimension of the intersection is less than that of at least one of them\". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_disjoint: {
            schema_name: "geoDisjoint",
            schema_url: "https://schema.org/geoDisjoint",
            comment_lines: ["Represents spatial relations in which two geometries (or the places they represent) are topologically disjoint: \"they have no point in common. They form a set of disconnected geometries.\" (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)"].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_equals: {
            schema_name: "geoEquals",
            schema_url: "https://schema.org/geoEquals",
            comment_lines: ["Represents spatial relations in which two geometries (or the places they represent) are topologically equal, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). \"Two geometries are topologically equal if their interiors intersect and no part of the interior or boundary of one geometry intersects the exterior of the other\" (a symmetric relationship)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_intersects: {
            schema_name: "geoIntersects",
            schema_url: "https://schema.org/geoIntersects",
            comment_lines: ["Represents spatial relations in which two geometries (or the places they represent) have at least one point in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_overlaps: {
            schema_name: "geoOverlaps",
            schema_url: "https://schema.org/geoOverlaps",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a geometry to another that geospatially overlaps it, i.e. they have some but not all points in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_touches: {
            schema_name: "geoTouches",
            schema_url: "https://schema.org/geoTouches",
            comment_lines: ["Represents spatial relations in which two geometries (or the places they represent) touch: \"they have at least one boundary point in common, but no interior points.\" (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)"].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_within: {
            schema_name: "geoWithin",
            schema_url: "https://schema.org/geoWithin",
            comment_lines: ["Represents a relationship between two geometries (or the places they represent), relating a geometry to one that contains it, i.e. it is inside (i.e. within) its interior. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM)."].freeze,
            ranges: ["GeospatialGeometry", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          global_location_number: {
            schema_name: "globalLocationNumber",
            schema_url: "https://schema.org/globalLocationNumber",
            comment_lines: ["The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_certification: {
            schema_name: "hasCertification",
            schema_url: "https://schema.org/hasCertification",
            comment_lines: ["Certification information about a product, organization, service, place, or person."].freeze,
            ranges: ["Certification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_drive_through_service: {
            schema_name: "hasDriveThroughService",
            schema_url: "https://schema.org/hasDriveThroughService",
            comment_lines: ["Indicates whether some facility (e.g. [[FoodEstablishment]], [[CovidTestingFacility]]) offers a service that can be used by driving through in a car. In the case of [[CovidTestingFacility]] such facilities could potentially help with social distancing from other potentially-infected users."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_gs1_digital_link: {
            schema_name: "hasGS1DigitalLink",
            schema_url: "https://schema.org/hasGS1DigitalLink",
            comment_lines: ["The <a href=\"https://www.gs1.org/standards/gs1-digital-link\">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_map: {
            schema_name: "hasMap",
            schema_url: "https://schema.org/hasMap",
            comment_lines: ["A URL to a map of the place."].freeze,
            ranges: ["Map", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "maps"
          }.freeze,
          is_accessible_for_free: {
            schema_name: "isAccessibleForFree",
            schema_url: "https://schema.org/isAccessibleForFree",
            comment_lines: ["A flag to signal that the item, event, or place is accessible for free."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "free"
          }.freeze,
          isic_v4: {
            schema_name: "isicV4",
            schema_url: "https://schema.org/isicV4",
            comment_lines: ["The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          keywords: {
            schema_name: "keywords",
            schema_url: "https://schema.org/keywords",
            comment_lines: ["Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          latitude: {
            schema_name: "latitude",
            schema_url: "https://schema.org/latitude",
            comment_lines: ["The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          logo: {
            schema_name: "logo",
            schema_url: "https://schema.org/logo",
            comment_lines: ["An associated logo."].freeze,
            ranges: ["ImageObject", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          longitude: {
            schema_name: "longitude",
            schema_url: "https://schema.org/longitude",
            comment_lines: ["The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System))."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          map: {
            schema_name: "map",
            schema_url: "https://schema.org/map",
            comment_lines: ["A URL to a map of the place."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "hasMap",
            supersedes: nil
          }.freeze,
          maps: {
            schema_name: "maps",
            schema_url: "https://schema.org/maps",
            comment_lines: ["A URL to a map of the place."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "hasMap",
            supersedes: nil
          }.freeze,
          maximum_attendee_capacity: {
            schema_name: "maximumAttendeeCapacity",
            schema_url: "https://schema.org/maximumAttendeeCapacity",
            comment_lines: ["The total number of individuals that may attend an event or venue."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          opening_hours_specification: {
            schema_name: "openingHoursSpecification",
            schema_url: "https://schema.org/openingHoursSpecification",
            comment_lines: ["The opening hours of a certain place."].freeze,
            ranges: ["OpeningHoursSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          photo: {
            schema_name: "photo",
            schema_url: "https://schema.org/photo",
            comment_lines: ["A photograph of this place."].freeze,
            ranges: ["ImageObject", "Photograph"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "photos"
          }.freeze,
          photos: {
            schema_name: "photos",
            schema_url: "https://schema.org/photos",
            comment_lines: ["Photographs of this place."].freeze,
            ranges: ["ImageObject", "Photograph"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "photo",
            supersedes: nil
          }.freeze,
          public_access: {
            schema_name: "publicAccess",
            schema_url: "https://schema.org/publicAccess",
            comment_lines: ["A flag to signal that the [[Place]] is open to public visitors.  If this property is omitted there is no assumed default boolean value."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          review: {
            schema_name: "review",
            schema_url: "https://schema.org/review",
            comment_lines: ["A review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "reviews"
          }.freeze,
          reviews: {
            schema_name: "reviews",
            schema_url: "https://schema.org/reviews",
            comment_lines: ["Review of the item."].freeze,
            ranges: ["Review"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "review",
            supersedes: nil
          }.freeze,
          slogan: {
            schema_name: "slogan",
            schema_url: "https://schema.org/slogan",
            comment_lines: ["A slogan or motto associated with the item."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          smoking_allowed: {
            schema_name: "smokingAllowed",
            schema_url: "https://schema.org/smokingAllowed",
            comment_lines: ["Indicates whether it is allowed to smoke in the place, e.g. in the restaurant, hotel or hotel room."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          special_opening_hours_specification: {
            schema_name: "specialOpeningHoursSpecification",
            schema_url: "https://schema.org/specialOpeningHoursSpecification",
            comment_lines: ["The special opening hours of a certain place.\\n\\nUse this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]]."].freeze,
            ranges: ["OpeningHoursSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          telephone: {
            schema_name: "telephone",
            schema_url: "https://schema.org/telephone",
            comment_lines: ["The telephone number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          tour_booking_page: {
            schema_name: "tourBookingPage",
            schema_url: "https://schema.org/tourBookingPage",
            comment_lines: ["A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property
        read_property(:additional_property)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property=(value)
        write_property(:additional_property, value)
      end

      # Physical address of the item.
      def address
        read_property(:address)
      end

      # Physical address of the item.
      def address=(value)
        write_property(:address, value)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating
        read_property(:aggregate_rating)
      end

      # The overall rating, based on a collection of reviews or ratings, of the item.
      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature
        read_property(:amenity_feature)
      end

      # An amenity feature (e.g. a characteristic or service) of the Accommodation. This generic property does not make a statement about whether the feature is included in an offer for the main accommodation or available at extra costs.
      def amenity_feature=(value)
        write_property(:amenity_feature, value)
      end

      # A short textual code (also called "store code") that uniquely identifies a place of business. The code is typically assigned by the parentOrganization and used in structured URLs.\n\nFor example, in the URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is a branchCode for a particular branch.
      def branch_code
        read_property(:branch_code)
      end

      # A short textual code (also called "store code") that uniquely identifies a place of business. The code is typically assigned by the parentOrganization and used in structured URLs.\n\nFor example, in the URL http://www.starbucks.co.uk/store-locator/etc/detail/3047 the code "3047" is a branchCode for a particular branch.
      def branch_code=(value)
        write_property(:branch_code, value)
      end

      # The basic containment relation between a place and one that contains it.
      # Superseded by `containedInPlace`.
      def contained_in
        read_property(:contained_in)
      end

      # The basic containment relation between a place and one that contains it.
      # Superseded by `containedInPlace`.
      def contained_in=(value)
        write_property(:contained_in, value)
      end

      # The basic containment relation between a place and one that contains it.
      # Supersedes `containedIn`.
      # Inverse-property: `containsPlace`.
      def contained_in_place
        read_property(:contained_in_place)
      end

      # The basic containment relation between a place and one that contains it.
      # Supersedes `containedIn`.
      # Inverse-property: `containsPlace`.
      def contained_in_place=(value)
        write_property(:contained_in_place, value)
      end

      # The basic containment relation between a place and another that it contains.
      # Inverse-property: `containedInPlace`.
      def contains_place
        read_property(:contains_place)
      end

      # The basic containment relation between a place and another that it contains.
      # Inverse-property: `containedInPlace`.
      def contains_place=(value)
        write_property(:contains_place, value)
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event
        read_property(:event)
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event=(value)
        write_property(:event, value)
      end

      # Upcoming or past events associated with this place or organization.
      # Superseded by `event`.
      def events
        read_property(:events)
      end

      # Upcoming or past events associated with this place or organization.
      # Superseded by `event`.
      def events=(value)
        write_property(:events, value)
      end

      # The fax number.
      def fax_number
        read_property(:fax_number)
      end

      # The fax number.
      def fax_number=(value)
        write_property(:fax_number, value)
      end

      # The geo coordinates of the place.
      def geo
        read_property(:geo)
      end

      # The geo coordinates of the place.
      def geo=(value)
        write_property(:geo, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a containing geometry to a contained geometry. "a contains b iff no points of b lie in the exterior of a, and at least one point of the interior of b lies in the interior of a". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_contains
        read_property(:geo_contains)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a containing geometry to a contained geometry. "a contains b iff no points of b lie in the exterior of a, and at least one point of the interior of b lies in the interior of a". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_contains=(value)
        write_property(:geo_contains, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that covers it. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_covered_by
        read_property(:geo_covered_by)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that covers it. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_covered_by=(value)
        write_property(:geo_covered_by, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a covering geometry to a covered geometry. "Every point of b is a point of (the interior or boundary of) a". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_covers
        read_property(:geo_covers)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a covering geometry to a covered geometry. "Every point of b is a point of (the interior or boundary of) a". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_covers=(value)
        write_property(:geo_covers, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that crosses it: "a crosses b: they have some but not all interior points in common, and the dimension of the intersection is less than that of at least one of them". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_crosses
        read_property(:geo_crosses)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that crosses it: "a crosses b: they have some but not all interior points in common, and the dimension of the intersection is less than that of at least one of them". As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_crosses=(value)
        write_property(:geo_crosses, value)
      end

      # Represents spatial relations in which two geometries (or the places they represent) are topologically disjoint: "they have no point in common. They form a set of disconnected geometries." (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
      def geo_disjoint
        read_property(:geo_disjoint)
      end

      # Represents spatial relations in which two geometries (or the places they represent) are topologically disjoint: "they have no point in common. They form a set of disconnected geometries." (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
      def geo_disjoint=(value)
        write_property(:geo_disjoint, value)
      end

      # Represents spatial relations in which two geometries (or the places they represent) are topologically equal, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are topologically equal if their interiors intersect and no part of the interior or boundary of one geometry intersects the exterior of the other" (a symmetric relationship).
      def geo_equals
        read_property(:geo_equals)
      end

      # Represents spatial relations in which two geometries (or the places they represent) are topologically equal, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM). "Two geometries are topologically equal if their interiors intersect and no part of the interior or boundary of one geometry intersects the exterior of the other" (a symmetric relationship).
      def geo_equals=(value)
        write_property(:geo_equals, value)
      end

      # Represents spatial relations in which two geometries (or the places they represent) have at least one point in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_intersects
        read_property(:geo_intersects)
      end

      # Represents spatial relations in which two geometries (or the places they represent) have at least one point in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_intersects=(value)
        write_property(:geo_intersects, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that geospatially overlaps it, i.e. they have some but not all points in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_overlaps
        read_property(:geo_overlaps)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to another that geospatially overlaps it, i.e. they have some but not all points in common. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_overlaps=(value)
        write_property(:geo_overlaps, value)
      end

      # Represents spatial relations in which two geometries (or the places they represent) touch: "they have at least one boundary point in common, but no interior points." (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
      def geo_touches
        read_property(:geo_touches)
      end

      # Represents spatial relations in which two geometries (or the places they represent) touch: "they have at least one boundary point in common, but no interior points." (A symmetric relationship, as defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).)
      def geo_touches=(value)
        write_property(:geo_touches, value)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to one that contains it, i.e. it is inside (i.e. within) its interior. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_within
        read_property(:geo_within)
      end

      # Represents a relationship between two geometries (or the places they represent), relating a geometry to one that contains it, i.e. it is inside (i.e. within) its interior. As defined in [DE-9IM](https://en.wikipedia.org/wiki/DE-9IM).
      def geo_within=(value)
        write_property(:geo_within, value)
      end

      # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
      def global_location_number
        read_property(:global_location_number)
      end

      # The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
      def global_location_number=(value)
        write_property(:global_location_number, value)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification
        read_property(:has_certification)
      end

      # Certification information about a product, organization, service, place, or person.
      def has_certification=(value)
        write_property(:has_certification, value)
      end

      # Indicates whether some facility (e.g. [[FoodEstablishment]], [[CovidTestingFacility]]) offers a service that can be used by driving through in a car. In the case of [[CovidTestingFacility]] such facilities could potentially help with social distancing from other potentially-infected users.
      def has_drive_through_service
        read_property(:has_drive_through_service)
      end

      # Indicates whether some facility (e.g. [[FoodEstablishment]], [[CovidTestingFacility]]) offers a service that can be used by driving through in a car. In the case of [[CovidTestingFacility]] such facilities could potentially help with social distancing from other potentially-infected users.
      def has_drive_through_service=(value)
        write_property(:has_drive_through_service, value)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link
        read_property(:has_gs1_digital_link)
      end

      # The <a href="https://www.gs1.org/standards/gs1-digital-link">GS1 digital link</a> associated with the object. This URL should conform to the particular requirements of digital links. The link should only contain the Application Identifiers (AIs) that are relevant for the entity being annotated, for instance a [[Product]] or an [[Organization]], and for the correct granularity. In particular, for products:<ul><li>A Digital Link that contains a serial number (AI <code>21</code>) should only be present on instances of [[IndividualProduct]]</li><li>A Digital Link that contains a lot number (AI <code>10</code>) should be annotated as [[SomeProducts]] if only products from that lot are sold, or [[IndividualProduct]] if there is only a specific product.</li><li>A Digital Link that contains a global model number (AI <code>8013</code>) should be attached to a [[Product]] or a [[ProductModel]].</li></ul> Other item types should be adapted similarly.
      def has_gs1_digital_link=(value)
        write_property(:has_gs1_digital_link, value)
      end

      # A URL to a map of the place.
      # Supersedes `maps`.
      def has_map
        read_property(:has_map)
      end

      # A URL to a map of the place.
      # Supersedes `maps`.
      def has_map=(value)
        write_property(:has_map, value)
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Supersedes `free`.
      def is_accessible_for_free
        read_property(:is_accessible_for_free)
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Supersedes `free`.
      def is_accessible_for_free=(value)
        write_property(:is_accessible_for_free, value)
      end

      # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
      def isic_v4
        read_property(:isic_v4)
      end

      # The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
      def isic_v4=(value)
        write_property(:isic_v4, value)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords
        read_property(:keywords)
      end

      # Keywords or tags used to describe some item. Multiple textual entries in a keywords list are typically delimited by commas, or by repeating the property.
      def keywords=(value)
        write_property(:keywords, value)
      end

      # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def latitude
        read_property(:latitude)
      end

      # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def latitude=(value)
        write_property(:latitude, value)
      end

      # An associated logo.
      def logo
        read_property(:logo)
      end

      # An associated logo.
      def logo=(value)
        write_property(:logo, value)
      end

      # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def longitude
        read_property(:longitude)
      end

      # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def longitude=(value)
        write_property(:longitude, value)
      end

      # A URL to a map of the place.
      # Superseded by `hasMap`.
      def map
        read_property(:map)
      end

      # A URL to a map of the place.
      # Superseded by `hasMap`.
      def map=(value)
        write_property(:map, value)
      end

      # A URL to a map of the place.
      # Superseded by `hasMap`.
      def maps
        read_property(:maps)
      end

      # A URL to a map of the place.
      # Superseded by `hasMap`.
      def maps=(value)
        write_property(:maps, value)
      end

      # The total number of individuals that may attend an event or venue.
      def maximum_attendee_capacity
        read_property(:maximum_attendee_capacity)
      end

      # The total number of individuals that may attend an event or venue.
      def maximum_attendee_capacity=(value)
        write_property(:maximum_attendee_capacity, value)
      end

      # The opening hours of a certain place.
      def opening_hours_specification
        read_property(:opening_hours_specification)
      end

      # The opening hours of a certain place.
      def opening_hours_specification=(value)
        write_property(:opening_hours_specification, value)
      end

      # A photograph of this place.
      # Supersedes `photos`.
      def photo
        read_property(:photo)
      end

      # A photograph of this place.
      # Supersedes `photos`.
      def photo=(value)
        write_property(:photo, value)
      end

      # Photographs of this place.
      # Superseded by `photo`.
      def photos
        read_property(:photos)
      end

      # Photographs of this place.
      # Superseded by `photo`.
      def photos=(value)
        write_property(:photos, value)
      end

      # A flag to signal that the [[Place]] is open to public visitors.  If this property is omitted there is no assumed default boolean value.
      def public_access
        read_property(:public_access)
      end

      # A flag to signal that the [[Place]] is open to public visitors.  If this property is omitted there is no assumed default boolean value.
      def public_access=(value)
        write_property(:public_access, value)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review
        read_property(:review)
      end

      # A review of the item.
      # Supersedes `reviews`.
      def review=(value)
        write_property(:review, value)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews
        read_property(:reviews)
      end

      # Review of the item.
      # Superseded by `review`.
      def reviews=(value)
        write_property(:reviews, value)
      end

      # A slogan or motto associated with the item.
      def slogan
        read_property(:slogan)
      end

      # A slogan or motto associated with the item.
      def slogan=(value)
        write_property(:slogan, value)
      end

      # Indicates whether it is allowed to smoke in the place, e.g. in the restaurant, hotel or hotel room.
      def smoking_allowed
        read_property(:smoking_allowed)
      end

      # Indicates whether it is allowed to smoke in the place, e.g. in the restaurant, hotel or hotel room.
      def smoking_allowed=(value)
        write_property(:smoking_allowed, value)
      end

      # The special opening hours of a certain place.\n\nUse this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].
      def special_opening_hours_specification
        read_property(:special_opening_hours_specification)
      end

      # The special opening hours of a certain place.\n\nUse this to explicitly override general opening hours brought in scope by [[openingHoursSpecification]] or [[openingHours]].
      def special_opening_hours_specification=(value)
        write_property(:special_opening_hours_specification, value)
      end

      # The telephone number.
      def telephone
        read_property(:telephone)
      end

      # The telephone number.
      def telephone=(value)
        write_property(:telephone, value)
      end

      # A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate.
      def tour_booking_page
        read_property(:tour_booking_page)
      end

      # A page providing information on how to book a tour of some [[Place]], such as an [[Accommodation]] or [[ApartmentComplex]] in a real estate setting, as well as other kinds of tours as appropriate.
      def tour_booking_page=(value)
        write_property(:tour_booking_page, value)
      end
    end
  end
end
