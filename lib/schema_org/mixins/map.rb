# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Map
      include CreativeWork

      def self.schema_property_definitions
        {
          map_type: {
            schema_name: "mapType",
            schema_url: "https://schema.org/mapType",
            comment_lines: ["Indicates the kind of Map, from the MapCategoryType Enumeration."].freeze,
            ranges: ["MapCategoryType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the kind of Map, from the MapCategoryType Enumeration.
      def map_type
        read_property(:map_type)
      end

      # Indicates the kind of Map, from the MapCategoryType Enumeration.
      def map_type=(value)
        write_property(:map_type, value)
      end
    end
  end
end
