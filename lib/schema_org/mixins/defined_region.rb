module SchemaOrg
  module Mixins
    module DefinedRegion
      include Place
      include StructuredValue

      def self.schema_property_definitions
        {
          :address_country => {
            schema_name: "addressCountry",
            ranges: ["Country", "Text"],
          }.freeze,
          :address_region => {
            schema_name: "addressRegion",
            ranges: ["AdministrativeArea", "Text"],
          }.freeze,
          :postal_code => {
            schema_name: "postalCode",
            ranges: ["Text"],
          }.freeze,
          :postal_code_prefix => {
            schema_name: "postalCodePrefix",
            ranges: ["Text"],
          }.freeze,
          :postal_code_range => {
            schema_name: "postalCodeRange",
            ranges: ["PostalCodeRangeSpecification"],
          }.freeze,
        }.freeze
      end

      def address_country
        read_property(:address_country)
      end

      def address_country=(value)
        write_property(:address_country, value)
      end

      def address_region
        read_property(:address_region)
      end

      def address_region=(value)
        write_property(:address_region, value)
      end

      def postal_code
        read_property(:postal_code)
      end

      def postal_code=(value)
        write_property(:postal_code, value)
      end

      def postal_code_prefix
        read_property(:postal_code_prefix)
      end

      def postal_code_prefix=(value)
        write_property(:postal_code_prefix, value)
      end

      def postal_code_range
        read_property(:postal_code_range)
      end

      def postal_code_range=(value)
        write_property(:postal_code_range, value)
      end

    end
  end
end
