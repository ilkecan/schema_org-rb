module SchemaOrg
  module Mixins
    module QuantitativeValueDistribution
      include StructuredValue

      def self.schema_property_definitions
        {
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :median => {
            schema_name: "median",
            ranges: ["Number"],
          }.freeze,
          :percentile10 => {
            schema_name: "percentile10",
            ranges: ["Number"],
          }.freeze,
          :percentile25 => {
            schema_name: "percentile25",
            ranges: ["Number"],
          }.freeze,
          :percentile75 => {
            schema_name: "percentile75",
            ranges: ["Number"],
          }.freeze,
          :percentile90 => {
            schema_name: "percentile90",
            ranges: ["Number"],
          }.freeze,
        }.freeze
      end

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def median
        read_property(:median)
      end

      def median=(value)
        write_property(:median, value)
      end

      def percentile10
        read_property(:percentile10)
      end

      def percentile10=(value)
        write_property(:percentile10, value)
      end

      def percentile25
        read_property(:percentile25)
      end

      def percentile25=(value)
        write_property(:percentile25, value)
      end

      def percentile75
        read_property(:percentile75)
      end

      def percentile75=(value)
        write_property(:percentile75, value)
      end

      def percentile90
        read_property(:percentile90)
      end

      def percentile90=(value)
        write_property(:percentile90, value)
      end

    end
  end
end
