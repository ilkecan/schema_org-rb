module SchemaOrg
  module Mixins
    module RentalCarReservation
      include Reservation

      def self.schema_property_definitions
        {
          :dropoff_location => {
            schema_name: "dropoffLocation",
            ranges: ["Place"],
          }.freeze,
          :dropoff_time => {
            schema_name: "dropoffTime",
            ranges: ["DateTime"],
          }.freeze,
          :pickup_location => {
            schema_name: "pickupLocation",
            ranges: ["Place"],
          }.freeze,
          :pickup_time => {
            schema_name: "pickupTime",
            ranges: ["DateTime"],
          }.freeze,
        }.freeze
      end

      def dropoff_location
        read_property(:dropoff_location)
      end

      def dropoff_location=(value)
        write_property(:dropoff_location, value)
      end

      def dropoff_time
        read_property(:dropoff_time)
      end

      def dropoff_time=(value)
        write_property(:dropoff_time, value)
      end

      def pickup_location
        read_property(:pickup_location)
      end

      def pickup_location=(value)
        write_property(:pickup_location, value)
      end

      def pickup_time
        read_property(:pickup_time)
      end

      def pickup_time=(value)
        write_property(:pickup_time, value)
      end

    end
  end
end
