module SchemaOrg
  module Mixins
    module ShippingDeliveryTime
      include StructuredValue

      def self.schema_property_definitions
        {
          :business_days => {
            schema_name: "businessDays",
            ranges: ["OpeningHoursSpecification"],
          }.freeze,
          :cutoff_time => {
            schema_name: "cutoffTime",
            ranges: ["Time"],
          }.freeze,
          :handling_time => {
            schema_name: "handlingTime",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :transit_time => {
            schema_name: "transitTime",
            ranges: ["QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def business_days
        read_property(:business_days)
      end

      def business_days=(value)
        write_property(:business_days, value)
      end

      def cutoff_time
        read_property(:cutoff_time)
      end

      def cutoff_time=(value)
        write_property(:cutoff_time, value)
      end

      def handling_time
        read_property(:handling_time)
      end

      def handling_time=(value)
        write_property(:handling_time, value)
      end

      def transit_time
        read_property(:transit_time)
      end

      def transit_time=(value)
        write_property(:transit_time, value)
      end

    end
  end
end
