module SchemaOrg
  module Mixins
    module Trip
      include Intangible

      def self.schema_property_definitions
        {
          :arrival_time => {
            schema_name: "arrivalTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :departure_time => {
            schema_name: "departureTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :trip_origin => {
            schema_name: "tripOrigin",
            ranges: ["Place"],
          }.freeze,
        }.freeze
      end

      def arrival_time
        read_property(:arrival_time)
      end

      def arrival_time=(value)
        write_property(:arrival_time, value)
      end

      def departure_time
        read_property(:departure_time)
      end

      def departure_time=(value)
        write_property(:departure_time, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def trip_origin
        read_property(:trip_origin)
      end

      def trip_origin=(value)
        write_property(:trip_origin, value)
      end

    end
  end
end
