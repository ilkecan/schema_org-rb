module SchemaOrg
  module Mixins
    module TVSeason
      include CreativeWork
      include CreativeWorkSeason

      def self.schema_property_definitions
        {
          :country_of_origin => {
            schema_name: "countryOfOrigin",
            ranges: ["Country"],
          }.freeze,
          :part_of_tv_series => {
            schema_name: "partOfTVSeries",
            ranges: ["TVSeries"],
          }.freeze,
        }.freeze
      end

      def country_of_origin
        read_property(:country_of_origin)
      end

      def country_of_origin=(value)
        write_property(:country_of_origin, value)
      end

      def part_of_tv_series
        read_property(:part_of_tv_series)
      end

      def part_of_tv_series=(value)
        write_property(:part_of_tv_series, value)
      end

    end
  end
end
