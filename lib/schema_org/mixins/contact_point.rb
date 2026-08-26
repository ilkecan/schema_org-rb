module SchemaOrg
  module Mixins
    module ContactPoint
      include StructuredValue

      def self.schema_property_definitions
        {
          :area_served => {
            schema_name: "areaServed",
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"],
          }.freeze,
          :available_language => {
            schema_name: "availableLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :contact_option => {
            schema_name: "contactOption",
            ranges: ["ContactPointOption"],
          }.freeze,
          :contact_type => {
            schema_name: "contactType",
            ranges: ["Text"],
          }.freeze,
          :email => {
            schema_name: "email",
            ranges: ["Text"],
          }.freeze,
          :fax_number => {
            schema_name: "faxNumber",
            ranges: ["Text"],
          }.freeze,
          :hours_available => {
            schema_name: "hoursAvailable",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :product_supported => {
            schema_name: "productSupported",
            ranges: ["Product", "Text"],
          }.freeze,
          :service_area => {
            schema_name: "serviceArea",
            ranges: ["AdministrativeArea", "GeoShape", "Place"],
          }.freeze,
          :telephone => {
            schema_name: "telephone",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def area_served
        read_property(:area_served)
      end

      def area_served=(value)
        write_property(:area_served, value)
      end

      def available_language
        read_property(:available_language)
      end

      def available_language=(value)
        write_property(:available_language, value)
      end

      def contact_option
        read_property(:contact_option)
      end

      def contact_option=(value)
        write_property(:contact_option, value)
      end

      def contact_type
        read_property(:contact_type)
      end

      def contact_type=(value)
        write_property(:contact_type, value)
      end

      def email
        read_property(:email)
      end

      def email=(value)
        write_property(:email, value)
      end

      def fax_number
        read_property(:fax_number)
      end

      def fax_number=(value)
        write_property(:fax_number, value)
      end

      def hours_available
        read_property(:hours_available)
      end

      def hours_available=(value)
        write_property(:hours_available, value)
      end

      def product_supported
        read_property(:product_supported)
      end

      def product_supported=(value)
        write_property(:product_supported, value)
      end

      def service_area
        read_property(:service_area)
      end

      def service_area=(value)
        write_property(:service_area, value)
      end

      def telephone
        read_property(:telephone)
      end

      def telephone=(value)
        write_property(:telephone, value)
      end

    end
  end
end
