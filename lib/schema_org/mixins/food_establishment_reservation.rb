module SchemaOrg
  module Mixins
    module FoodEstablishmentReservation
      include Reservation

      def self.schema_property_definitions
        {
          :end_time => {
            schema_name: "endTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :party_size => {
            schema_name: "partySize",
            ranges: ["Integer", "QuantitativeValue"],
          }.freeze,
          :start_time => {
            schema_name: "startTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
        }.freeze
      end

      def end_time
        read_property(:end_time)
      end

      def end_time=(value)
        write_property(:end_time, value)
      end

      def party_size
        read_property(:party_size)
      end

      def party_size=(value)
        write_property(:party_size, value)
      end

      def start_time
        read_property(:start_time)
      end

      def start_time=(value)
        write_property(:start_time, value)
      end

    end
  end
end
