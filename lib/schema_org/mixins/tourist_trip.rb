# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TouristTrip
      include Trip

      def self.schema_property_definitions
        {
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
