module SchemaOrg
  module Mixins
    module ServiceChannel
      include Intangible

      def self.schema_property_definitions
        {
          :available_language => {
            schema_name: "availableLanguage",
            ranges: ["Language", "Text"],
          }.freeze,
          :processing_time => {
            schema_name: "processingTime",
            ranges: ["Duration"],
          }.freeze,
          :provides_service => {
            schema_name: "providesService",
            ranges: ["Service"],
          }.freeze,
          :service_location => {
            schema_name: "serviceLocation",
            ranges: ["Place"],
          }.freeze,
          :service_phone => {
            schema_name: "servicePhone",
            ranges: ["ContactPoint"],
          }.freeze,
          :service_postal_address => {
            schema_name: "servicePostalAddress",
            ranges: ["PostalAddress"],
          }.freeze,
          :service_sms_number => {
            schema_name: "serviceSmsNumber",
            ranges: ["ContactPoint"],
          }.freeze,
          :service_url => {
            schema_name: "serviceUrl",
            ranges: ["URL"],
          }.freeze,
        }.freeze
      end

      def available_language
        read_property(:available_language)
      end

      def available_language=(value)
        write_property(:available_language, value)
      end

      def processing_time
        read_property(:processing_time)
      end

      def processing_time=(value)
        write_property(:processing_time, value)
      end

      def provides_service
        read_property(:provides_service)
      end

      def provides_service=(value)
        write_property(:provides_service, value)
      end

      def service_location
        read_property(:service_location)
      end

      def service_location=(value)
        write_property(:service_location, value)
      end

      def service_phone
        read_property(:service_phone)
      end

      def service_phone=(value)
        write_property(:service_phone, value)
      end

      def service_postal_address
        read_property(:service_postal_address)
      end

      def service_postal_address=(value)
        write_property(:service_postal_address, value)
      end

      def service_sms_number
        read_property(:service_sms_number)
      end

      def service_sms_number=(value)
        write_property(:service_sms_number, value)
      end

      def service_url
        read_property(:service_url)
      end

      def service_url=(value)
        write_property(:service_url, value)
      end

    end
  end
end
