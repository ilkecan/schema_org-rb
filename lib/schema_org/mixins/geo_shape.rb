module SchemaOrg
  module Mixins
    module GeoShape
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
          :box => {
            schema_name: "box",
            ranges: ["Text"],
          }.freeze,
          :circle => {
            schema_name: "circle",
            ranges: ["Text"],
          }.freeze,
          :elevation => {
            schema_name: "elevation",
            ranges: ["Number", "Text"],
          }.freeze,
          :line => {
            schema_name: "line",
            ranges: ["Text"],
          }.freeze,
          :polygon => {
            schema_name: "polygon",
            ranges: ["Text"],
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

      def box
        read_property(:box)
      end

      def box=(value)
        write_property(:box, value)
      end

      def circle
        read_property(:circle)
      end

      def circle=(value)
        write_property(:circle, value)
      end

      def elevation
        read_property(:elevation)
      end

      def elevation=(value)
        write_property(:elevation, value)
      end

      def line
        read_property(:line)
      end

      def line=(value)
        write_property(:line, value)
      end

      def polygon
        read_property(:polygon)
      end

      def polygon=(value)
        write_property(:polygon, value)
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
