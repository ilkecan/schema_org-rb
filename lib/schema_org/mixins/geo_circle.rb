# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module GeoCircle
      include GeoShape

      def self.schema_property_definitions
        {
          geo_midpoint: {
            schema_name: "geoMidpoint",
            schema_url: "https://schema.org/geoMidpoint",
            comment_lines: ["Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle."].freeze,
            ranges: ["GeoCoordinates"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          geo_radius: {
            schema_name: "geoRadius",
            schema_url: "https://schema.org/geoRadius",
            comment_lines: ["Indicates the approximate radius of a GeoCircle (metres unless indicated otherwise via Distance notation)."].freeze,
            ranges: ["Distance", "Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.
      def geo_midpoint
        read_property(:geo_midpoint)
      end

      # Indicates the GeoCoordinates at the centre of a GeoShape, e.g. GeoCircle.
      def geo_midpoint=(value)
        write_property(:geo_midpoint, value)
      end

      # Indicates the approximate radius of a GeoCircle (metres unless indicated otherwise via Distance notation).
      def geo_radius
        read_property(:geo_radius)
      end

      # Indicates the approximate radius of a GeoCircle (metres unless indicated otherwise via Distance notation).
      def geo_radius=(value)
        write_property(:geo_radius, value)
      end
    end
  end
end
