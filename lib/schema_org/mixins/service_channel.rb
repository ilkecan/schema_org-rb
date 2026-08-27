# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ServiceChannel
      include Intangible

      def self.schema_property_definitions
        {
          available_language: {
            schema_name: "availableLanguage",
            schema_url: "https://schema.org/availableLanguage",
            comment_lines: ["A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]."].freeze,
            ranges: ["Language", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          processing_time: {
            schema_name: "processingTime",
            schema_url: "https://schema.org/processingTime",
            comment_lines: ["Estimated processing time for the service using this channel."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provides_service: {
            schema_name: "providesService",
            schema_url: "https://schema.org/providesService",
            comment_lines: ["The service provided by this channel."].freeze,
            ranges: ["Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_location: {
            schema_name: "serviceLocation",
            schema_url: "https://schema.org/serviceLocation",
            comment_lines: ["The location (e.g. civic structure, local business, etc.) where a person can go to access the service."].freeze,
            ranges: ["Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_phone: {
            schema_name: "servicePhone",
            schema_url: "https://schema.org/servicePhone",
            comment_lines: ["The phone number to use to access the service."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_postal_address: {
            schema_name: "servicePostalAddress",
            schema_url: "https://schema.org/servicePostalAddress",
            comment_lines: ["The address for accessing the service by mail."].freeze,
            ranges: ["PostalAddress"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_sms_number: {
            schema_name: "serviceSmsNumber",
            schema_url: "https://schema.org/serviceSmsNumber",
            comment_lines: ["The number to access the service by text message."].freeze,
            ranges: ["ContactPoint"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_url: {
            schema_name: "serviceUrl",
            schema_url: "https://schema.org/serviceUrl",
            comment_lines: ["The website to access the service."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language
        read_property(:available_language)
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language=(value)
        write_property(:available_language, value)
      end

      # Estimated processing time for the service using this channel.
      def processing_time
        read_property(:processing_time)
      end

      # Estimated processing time for the service using this channel.
      def processing_time=(value)
        write_property(:processing_time, value)
      end

      # The service provided by this channel.
      def provides_service
        read_property(:provides_service)
      end

      # The service provided by this channel.
      def provides_service=(value)
        write_property(:provides_service, value)
      end

      # The location (e.g. civic structure, local business, etc.) where a person can go to access the service.
      def service_location
        read_property(:service_location)
      end

      # The location (e.g. civic structure, local business, etc.) where a person can go to access the service.
      def service_location=(value)
        write_property(:service_location, value)
      end

      # The phone number to use to access the service.
      def service_phone
        read_property(:service_phone)
      end

      # The phone number to use to access the service.
      def service_phone=(value)
        write_property(:service_phone, value)
      end

      # The address for accessing the service by mail.
      def service_postal_address
        read_property(:service_postal_address)
      end

      # The address for accessing the service by mail.
      def service_postal_address=(value)
        write_property(:service_postal_address, value)
      end

      # The number to access the service by text message.
      def service_sms_number
        read_property(:service_sms_number)
      end

      # The number to access the service by text message.
      def service_sms_number=(value)
        write_property(:service_sms_number, value)
      end

      # The website to access the service.
      def service_url
        read_property(:service_url)
      end

      # The website to access the service.
      def service_url=(value)
        write_property(:service_url, value)
      end
    end
  end
end
