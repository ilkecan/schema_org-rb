# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TouristAttraction
      include Place

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
          tourist_type: {
            schema_name: "touristType",
            schema_url: "https://schema.org/touristType",
            comment_lines: ["Attraction suitable for type(s) of tourist. E.g. children, visitors from a particular country, etc."].freeze,
            ranges: ["Audience", "Text"].freeze,
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

      # Attraction suitable for type(s) of tourist. E.g. children, visitors from a particular country, etc.
      def tourist_type
        read_property(:tourist_type)
      end

      # Attraction suitable for type(s) of tourist. E.g. children, visitors from a particular country, etc.
      def tourist_type=(value)
        write_property(:tourist_type, value)
      end
    end
  end
end
