# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module GeoCoordinates
      include StructuredValue

      def self.schema_property_definitions
        {
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
          address_country: {
            schema_name: "addressCountry",
            schema_url: "https://schema.org/addressCountry",
            comment_lines: ["The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example \"US\". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as \"SGP\" or a full country name such as \"Singapore\" can also be used."].freeze,
            ranges: ["Country", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          elevation: {
            schema_name: "elevation",
            schema_url: "https://schema.org/elevation",
            comment_lines: ["The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\\_OF\\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters."].freeze,
            ranges: ["Number", "Text"].freeze,
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
          postal_code: {
            schema_name: "postalCode",
            schema_url: "https://schema.org/postalCode",
            comment_lines: ["The postal code. For example, 94043."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Physical address of the item.
      def address
        read_property(:address)
      end

      # Physical address of the item.
      def address=(value)
        write_property(:address, value)
      end

      # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
      def address_country
        read_property(:address_country)
      end

      # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
      def address_country=(value)
        write_property(:address_country, value)
      end

      # The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters.
      def elevation
        read_property(:elevation)
      end

      # The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters.
      def elevation=(value)
        write_property(:elevation, value)
      end

      # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def latitude
        read_property(:latitude)
      end

      # The latitude of a location. For example ```37.42242``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def latitude=(value)
        write_property(:latitude, value)
      end

      # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def longitude
        read_property(:longitude)
      end

      # The longitude of a location. For example ```-122.08585``` ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)).
      def longitude=(value)
        write_property(:longitude, value)
      end

      # The postal code. For example, 94043.
      def postal_code
        read_property(:postal_code)
      end

      # The postal code. For example, 94043.
      def postal_code=(value)
        write_property(:postal_code, value)
      end
    end
  end
end
