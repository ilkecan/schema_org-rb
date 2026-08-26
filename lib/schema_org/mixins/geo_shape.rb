# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module GeoShape
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
          box: {
            schema_name: "box",
            schema_url: "https://schema.org/box",
            comment_lines: ["A box is the area enclosed by the rectangle formed by two points. The first point is the lower corner, the second point is the upper corner. A box is expressed as two points separated by a space character."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          circle: {
            schema_name: "circle",
            schema_url: "https://schema.org/circle",
            comment_lines: ["A circle is the circular region of a specified radius centered at a specified latitude and longitude. A circle is expressed as a pair followed by a radius in meters."].freeze,
            ranges: ["Text"].freeze,
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
          line: {
            schema_name: "line",
            schema_url: "https://schema.org/line",
            comment_lines: ["A line is a point-to-point path consisting of two or more points. A line is expressed as a series of two or more point objects separated by space."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          polygon: {
            schema_name: "polygon",
            schema_url: "https://schema.org/polygon",
            comment_lines: ["A polygon is the area enclosed by a point-to-point path for which the starting and ending points are the same. A polygon is expressed as a series of four or more space delimited points where the first and final points are identical."].freeze,
            ranges: ["Text"].freeze,
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

      # A box is the area enclosed by the rectangle formed by two points. The first point is the lower corner, the second point is the upper corner. A box is expressed as two points separated by a space character.
      def box
        read_property(:box)
      end

      # A box is the area enclosed by the rectangle formed by two points. The first point is the lower corner, the second point is the upper corner. A box is expressed as two points separated by a space character.
      def box=(value)
        write_property(:box, value)
      end

      # A circle is the circular region of a specified radius centered at a specified latitude and longitude. A circle is expressed as a pair followed by a radius in meters.
      def circle
        read_property(:circle)
      end

      # A circle is the circular region of a specified radius centered at a specified latitude and longitude. A circle is expressed as a pair followed by a radius in meters.
      def circle=(value)
        write_property(:circle, value)
      end

      # The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters.
      def elevation
        read_property(:elevation)
      end

      # The elevation of a location ([WGS 84](https://en.wikipedia.org/wiki/World_Geodetic_System)). Values may be of the form 'NUMBER UNIT\_OF\_MEASUREMENT' (e.g., '1,000 m', '3,200 ft') while numbers alone should be assumed to be a value in meters.
      def elevation=(value)
        write_property(:elevation, value)
      end

      # A line is a point-to-point path consisting of two or more points. A line is expressed as a series of two or more point objects separated by space.
      def line
        read_property(:line)
      end

      # A line is a point-to-point path consisting of two or more points. A line is expressed as a series of two or more point objects separated by space.
      def line=(value)
        write_property(:line, value)
      end

      # A polygon is the area enclosed by a point-to-point path for which the starting and ending points are the same. A polygon is expressed as a series of four or more space delimited points where the first and final points are identical.
      def polygon
        read_property(:polygon)
      end

      # A polygon is the area enclosed by a point-to-point path for which the starting and ending points are the same. A polygon is expressed as a series of four or more space delimited points where the first and final points are identical.
      def polygon=(value)
        write_property(:polygon, value)
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
