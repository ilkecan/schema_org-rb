# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PostalAddress
      include ContactPoint

      def self.schema_property_definitions
        {
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
          address_locality: {
            schema_name: "addressLocality",
            schema_url: "https://schema.org/addressLocality",
            comment_lines: ["The locality in which the street address is, and which is in the region. For example, Mountain View."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          address_region: {
            schema_name: "addressRegion",
            schema_url: "https://schema.org/addressRegion",
            comment_lines: ["The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such as the Province in Italy or Region in Germany."].freeze,
            ranges: ["AdministrativeArea", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          extended_address: {
            schema_name: "extendedAddress",
            schema_url: "https://schema.org/extendedAddress",
            comment_lines: ["An address extension such as an apartment number, C/O or alternative name."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          post_office_box_number: {
            schema_name: "postOfficeBoxNumber",
            schema_url: "https://schema.org/postOfficeBoxNumber",
            comment_lines: ["The post office box number for PO box addresses."].freeze,
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
          }.freeze,
          street_address: {
            schema_name: "streetAddress",
            schema_url: "https://schema.org/streetAddress",
            comment_lines: ["The street address. For example, 1600 Amphitheatre Pkwy."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
      def address_country
        read_property(:address_country)
      end

      # The country. Recommended to be in 2-letter [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1) format, for example "US". For backward compatibility, a 3-letter [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) country code such as "SGP" or a full country name such as "Singapore" can also be used.
      def address_country=(value)
        write_property(:address_country, value)
      end

      # The locality in which the street address is, and which is in the region. For example, Mountain View.
      def address_locality
        read_property(:address_locality)
      end

      # The locality in which the street address is, and which is in the region. For example, Mountain View.
      def address_locality=(value)
        write_property(:address_locality, value)
      end

      # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such as the Province in Italy or Region in Germany.
      def address_region
        read_property(:address_region)
      end

      # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such as the Province in Italy or Region in Germany.
      def address_region=(value)
        write_property(:address_region, value)
      end

      # An address extension such as an apartment number, C/O or alternative name.
      def extended_address
        read_property(:extended_address)
      end

      # An address extension such as an apartment number, C/O or alternative name.
      def extended_address=(value)
        write_property(:extended_address, value)
      end

      # The post office box number for PO box addresses.
      def post_office_box_number
        read_property(:post_office_box_number)
      end

      # The post office box number for PO box addresses.
      def post_office_box_number=(value)
        write_property(:post_office_box_number, value)
      end

      # The postal code. For example, 94043.
      def postal_code
        read_property(:postal_code)
      end

      # The postal code. For example, 94043.
      def postal_code=(value)
        write_property(:postal_code, value)
      end

      # The street address. For example, 1600 Amphitheatre Pkwy.
      def street_address
        read_property(:street_address)
      end

      # The street address. For example, 1600 Amphitheatre Pkwy.
      def street_address=(value)
        write_property(:street_address, value)
      end
    end
  end
end
