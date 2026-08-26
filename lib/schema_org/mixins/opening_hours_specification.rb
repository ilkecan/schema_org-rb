module SchemaOrg
  module Mixins
    module OpeningHoursSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          :closes => {
            schema_name: "closes",
            ranges: ["Time"],
          }.freeze,
          :day_of_week => {
            schema_name: "dayOfWeek",
            ranges: ["DayOfWeek"],
          }.freeze,
          :opens => {
            schema_name: "opens",
            ranges: ["Time"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def closes
        read_property(:closes)
      end

      def closes=(value)
        write_property(:closes, value)
      end

      def day_of_week
        read_property(:day_of_week)
      end

      def day_of_week=(value)
        write_property(:day_of_week, value)
      end

      def opens
        read_property(:opens)
      end

      def opens=(value)
        write_property(:opens, value)
      end

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

    end
  end
end
