# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DefinedRegion
      include Place
      include StructuredValue

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
          postal_code_prefix: {
            schema_name: "postalCodePrefix",
            schema_url: "https://schema.org/postalCodePrefix",
            comment_lines: ["A defined range of postal codes indicated by a common textual prefix. Used for non-numeric systems such as UK."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          postal_code_range: {
            schema_name: "postalCodeRange",
            schema_url: "https://schema.org/postalCodeRange",
            comment_lines: ["A defined range of postal codes."].freeze,
            ranges: ["PostalCodeRangeSpecification"].freeze,
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

      # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such as the Province in Italy or Region in Germany.
      def address_region
        read_property(:address_region)
      end

      # The region in which the locality is, and which is in the country. For example, California or another appropriate first-level [Administrative division](https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country) such as the Province in Italy or Region in Germany.
      def address_region=(value)
        write_property(:address_region, value)
      end

      # The postal code. For example, 94043.
      def postal_code
        read_property(:postal_code)
      end

      # The postal code. For example, 94043.
      def postal_code=(value)
        write_property(:postal_code, value)
      end

      # A defined range of postal codes indicated by a common textual prefix. Used for non-numeric systems such as UK.
      def postal_code_prefix
        read_property(:postal_code_prefix)
      end

      # A defined range of postal codes indicated by a common textual prefix. Used for non-numeric systems such as UK.
      def postal_code_prefix=(value)
        write_property(:postal_code_prefix, value)
      end

      # A defined range of postal codes.
      def postal_code_range
        read_property(:postal_code_range)
      end

      # A defined range of postal codes.
      def postal_code_range=(value)
        write_property(:postal_code_range, value)
      end
    end
  end
end
