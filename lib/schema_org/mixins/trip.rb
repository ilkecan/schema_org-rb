# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Trip
      include Intangible

      def self.schema_property_definitions
        {
          arrival_time: {
            schema_name: "arrivalTime",
            schema_url: "https://schema.org/arrivalTime",
            comment_lines: ["The expected arrival time."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_time: {
            schema_name: "departureTime",
            schema_url: "https://schema.org/departureTime",
            comment_lines: ["The expected departure time."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          itinerary: {
            schema_name: "itinerary",
            schema_url: "https://schema.org/itinerary",
            comment_lines: ["Destination(s) ( [[Place]] ) that make up a trip. For a trip where destination order is important use [[ItemList]] to specify that order (see examples)."].freeze,
            ranges: ["ItemList", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          offers: {
            schema_name: "offers",
            schema_url: "https://schema.org/offers",
            comment_lines: ["An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["Demand", "Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "itemOffered",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_trip: {
            schema_name: "partOfTrip",
            schema_url: "https://schema.org/partOfTrip",
            comment_lines: ["Identifies that this [[Trip]] is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip."].freeze,
            ranges: ["Trip"].freeze,
            external_ranges: [].freeze,
            inverse_of: "subTrip",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "carrier"
          }.freeze,
          sub_trip: {
            schema_name: "subTrip",
            schema_url: "https://schema.org/subTrip",
            comment_lines: ["Identifies a [[Trip]] that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip."].freeze,
            ranges: ["Trip"].freeze,
            external_ranges: [].freeze,
            inverse_of: "partOfTrip",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          trip_origin: {
            schema_name: "tripOrigin",
            schema_url: "https://schema.org/tripOrigin",
            comment_lines: ["The location of origin of the trip, prior to any destination(s)."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The expected arrival time.
      def arrival_time
        read_property(:arrival_time)
      end

      # The expected arrival time.
      def arrival_time=(value)
        write_property(:arrival_time, value)
      end

      # The expected departure time.
      def departure_time
        read_property(:departure_time)
      end

      # The expected departure time.
      def departure_time=(value)
        write_property(:departure_time, value)
      end

      # Destination(s) ( [[Place]] ) that make up a trip. For a trip where destination order is important use [[ItemList]] to specify that order (see examples).
      def itinerary
        read_property(:itinerary)
      end

      # Destination(s) ( [[Place]] ) that make up a trip. For a trip where destination order is important use [[ItemList]] to specify that order (see examples).
      def itinerary=(value)
        write_property(:itinerary, value)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers
        read_property(:offers)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers=(value)
        write_property(:offers, value)
      end

      # Identifies that this [[Trip]] is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
      # Inverse-property: `subTrip`.
      def part_of_trip
        read_property(:part_of_trip)
      end

      # Identifies that this [[Trip]] is a subTrip of another Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
      # Inverse-property: `subTrip`.
      def part_of_trip=(value)
        write_property(:part_of_trip, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # Identifies a [[Trip]] that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
      # Inverse-property: `partOfTrip`.
      def sub_trip
        read_property(:sub_trip)
      end

      # Identifies a [[Trip]] that is a subTrip of this Trip.  For example Day 1, Day 2, etc. of a multi-day trip.
      # Inverse-property: `partOfTrip`.
      def sub_trip=(value)
        write_property(:sub_trip, value)
      end

      # The location of origin of the trip, prior to any destination(s).
      def trip_origin
        read_property(:trip_origin)
      end

      # The location of origin of the trip, prior to any destination(s).
      def trip_origin=(value)
        write_property(:trip_origin, value)
      end
    end
  end
end
