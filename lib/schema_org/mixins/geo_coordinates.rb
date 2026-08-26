module SchemaOrg
  module Mixins
    module GeoCoordinates
      include StructuredValue

      def self.schema_property_definitions
        {
          :address => {
            schema_name: "address",
            ranges: ["PostalAddress", "Text"],
          }.freeze,
          :address_country => {
            schema_name: "addressCountry",
            ranges: ["Country", "Text"],
          }.freeze,
          :elevation => {
            schema_name: "elevation",
            ranges: ["Number", "Text"],
          }.freeze,
          :latitude => {
            schema_name: "latitude",
            ranges: ["Number", "Text"],
          }.freeze,
          :longitude => {
            schema_name: "longitude",
            ranges: ["Number", "Text"],
          }.freeze,
          :postal_code => {
            schema_name: "postalCode",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def address
        read_property(:address)
      end

      def address=(value)
        write_property(:address, value)
      end

      def address_country
        read_property(:address_country)
      end

      def address_country=(value)
        write_property(:address_country, value)
      end

      def elevation
        read_property(:elevation)
      end

      def elevation=(value)
        write_property(:elevation, value)
      end

      def latitude
        read_property(:latitude)
      end

      def latitude=(value)
        write_property(:latitude, value)
      end

      def longitude
        read_property(:longitude)
      end

      def longitude=(value)
        write_property(:longitude, value)
      end

      def postal_code
        read_property(:postal_code)
      end

      def postal_code=(value)
        write_property(:postal_code, value)
      end

    end
  end
end
