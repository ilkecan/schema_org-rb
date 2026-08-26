module SchemaOrg
  module Mixins
    module TaxiReservation
      include Reservation

      def self.schema_property_definitions
        {
          :party_size => {
            schema_name: "partySize",
            ranges: ["Integer", "QuantitativeValue"],
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

      def party_size
        read_property(:party_size)
      end

      def party_size=(value)
        write_property(:party_size, value)
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
