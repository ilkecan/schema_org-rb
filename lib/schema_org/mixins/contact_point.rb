# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ContactPoint
      include StructuredValue

      def self.schema_property_definitions
        {
          area_served: {
            schema_name: "areaServed",
            schema_url: "https://schema.org/areaServed",
            comment_lines: ["The geographic area where a service or offered item is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "serviceArea"
          }.freeze,
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
          contact_option: {
            schema_name: "contactOption",
            schema_url: "https://schema.org/contactOption",
            comment_lines: ["An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers)."].freeze,
            ranges: ["ContactPointOption"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contact_type: {
            schema_name: "contactType",
            schema_url: "https://schema.org/contactType",
            comment_lines: ["A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          email: {
            schema_name: "email",
            schema_url: "https://schema.org/email",
            comment_lines: ["Email address."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fax_number: {
            schema_name: "faxNumber",
            schema_url: "https://schema.org/faxNumber",
            comment_lines: ["The fax number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          hours_available: {
            schema_name: "hoursAvailable",
            schema_url: "https://schema.org/hoursAvailable",
            comment_lines: ["The hours during which this service or contact is available."].freeze,
            ranges: ["OpeningHoursSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          product_supported: {
            schema_name: "productSupported",
            schema_url: "https://schema.org/productSupported",
            comment_lines: ["The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. \"iPhone\") or a general category of products or services (e.g. \"smartphones\")."].freeze,
            ranges: ["Product", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          service_area: {
            schema_name: "serviceArea",
            schema_url: "https://schema.org/serviceArea",
            comment_lines: ["The geographic area where the service is provided."].freeze,
            ranges: ["AdministrativeArea", "GeoShape", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "areaServed",
            supersedes: "area"
          }.freeze,
          telephone: {
            schema_name: "telephone",
            schema_url: "https://schema.org/telephone",
            comment_lines: ["The telephone number."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served
        read_property(:area_served)
      end

      # The geographic area where a service or offered item is provided.
      # Supersedes `serviceArea`.
      def area_served=(value)
        write_property(:area_served, value)
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language
        read_property(:available_language)
      end

      # A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]].
      def available_language=(value)
        write_property(:available_language, value)
      end

      # An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers).
      def contact_option
        read_property(:contact_option)
      end

      # An option available on this contact point (e.g. a toll-free number or support for hearing-impaired callers).
      def contact_option=(value)
        write_property(:contact_option, value)
      end

      # A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point.
      def contact_type
        read_property(:contact_type)
      end

      # A person or organization can have different contact points, for different purposes. For example, a sales contact point, a PR contact point and so on. This property is used to specify the kind of contact point.
      def contact_type=(value)
        write_property(:contact_type, value)
      end

      # Email address.
      def email
        read_property(:email)
      end

      # Email address.
      def email=(value)
        write_property(:email, value)
      end

      # The fax number.
      def fax_number
        read_property(:fax_number)
      end

      # The fax number.
      def fax_number=(value)
        write_property(:fax_number, value)
      end

      # The hours during which this service or contact is available.
      def hours_available
        read_property(:hours_available)
      end

      # The hours during which this service or contact is available.
      def hours_available=(value)
        write_property(:hours_available, value)
      end

      # The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. "iPhone") or a general category of products or services (e.g. "smartphones").
      def product_supported
        read_property(:product_supported)
      end

      # The product or service this support contact point is related to (such as product support for a particular product line). This can be a specific product or product line (e.g. "iPhone") or a general category of products or services (e.g. "smartphones").
      def product_supported=(value)
        write_property(:product_supported, value)
      end

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area
        read_property(:service_area)
      end

      # The geographic area where the service is provided.
      # Supersedes `area`.
      # Superseded by `areaServed`.
      def service_area=(value)
        write_property(:service_area, value)
      end

      # The telephone number.
      def telephone
        read_property(:telephone)
      end

      # The telephone number.
      def telephone=(value)
        write_property(:telephone, value)
      end
    end
  end
end
