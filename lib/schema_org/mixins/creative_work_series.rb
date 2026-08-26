module SchemaOrg
  module Mixins
    module CreativeWorkSeries
      include CreativeWork
      include Series

      def self.schema_property_definitions
        {
          :end_date => {
            schema_name: "endDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :issn => {
            schema_name: "issn",
            ranges: ["Text"],
          }.freeze,
          :start_date => {
            schema_name: "startDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def end_date
        read_property(:end_date)
      end

      def end_date=(value)
        write_property(:end_date, value)
      end

      def issn
        read_property(:issn)
      end

      def issn=(value)
        write_property(:issn, value)
      end

      def start_date
        read_property(:start_date)
      end

      def start_date=(value)
        write_property(:start_date, value)
      end

    end
  end
end
