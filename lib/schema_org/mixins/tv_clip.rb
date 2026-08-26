module SchemaOrg
  module Mixins
    module TVClip
      include Clip

      def self.schema_property_definitions
        {
          :part_of_tv_series => {
            schema_name: "partOfTVSeries",
            ranges: ["TVSeries"],
          }.freeze,
        }.freeze
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
