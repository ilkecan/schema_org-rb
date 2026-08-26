module SchemaOrg
  module Mixins
    module GeoCircle
      include GeoShape

      def self.schema_property_definitions
        {
          :geo_midpoint => {
            schema_name: "geoMidpoint",
            ranges: ["GeoCoordinates"],
          }.freeze,
          :geo_radius => {
            schema_name: "geoRadius",
            ranges: ["Distance", "Number", "Text"],
          }.freeze,
        }.freeze
      end

      def geo_midpoint
        read_property(:geo_midpoint)
      end

      def geo_midpoint=(value)
        write_property(:geo_midpoint, value)
      end

      def geo_radius
        read_property(:geo_radius)
      end

      def geo_radius=(value)
        write_property(:geo_radius, value)
      end

    end
  end
end
