module SchemaOrg
  module Mixins
    module PostalAddress
      include ContactPoint

      def self.schema_property_definitions
        {
          :address_country => {
            schema_name: "addressCountry",
            ranges: ["Country", "Text"],
          }.freeze,
          :address_locality => {
            schema_name: "addressLocality",
            ranges: ["Text"],
          }.freeze,
          :address_region => {
            schema_name: "addressRegion",
            ranges: ["AdministrativeArea", "Text"],
          }.freeze,
          :extended_address => {
            schema_name: "extendedAddress",
            ranges: ["Text"],
          }.freeze,
          :post_office_box_number => {
            schema_name: "postOfficeBoxNumber",
            ranges: ["Text"],
          }.freeze,
          :postal_code => {
            schema_name: "postalCode",
            ranges: ["Text"],
          }.freeze,
          :street_address => {
            schema_name: "streetAddress",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def address_country
        read_property(:address_country)
      end

      def address_country=(value)
        write_property(:address_country, value)
      end

      def address_locality
        read_property(:address_locality)
      end

      def address_locality=(value)
        write_property(:address_locality, value)
      end

      def address_region
        read_property(:address_region)
      end

      def address_region=(value)
        write_property(:address_region, value)
      end

      def extended_address
        read_property(:extended_address)
      end

      def extended_address=(value)
        write_property(:extended_address, value)
      end

      def post_office_box_number
        read_property(:post_office_box_number)
      end

      def post_office_box_number=(value)
        write_property(:post_office_box_number, value)
      end

      def postal_code
        read_property(:postal_code)
      end

      def postal_code=(value)
        write_property(:postal_code, value)
      end

      def street_address
        read_property(:street_address)
      end

      def street_address=(value)
        write_property(:street_address, value)
      end

    end
  end
end
