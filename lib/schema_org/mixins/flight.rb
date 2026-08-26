module SchemaOrg
  module Mixins
    module Flight
      include Trip

      def self.schema_property_definitions
        {
          :aircraft => {
            schema_name: "aircraft",
            ranges: ["Text", "Vehicle"],
          }.freeze,
          :arrival_airport => {
            schema_name: "arrivalAirport",
            ranges: ["Airport"],
          }.freeze,
          :arrival_gate => {
            schema_name: "arrivalGate",
            ranges: ["Text"],
          }.freeze,
          :arrival_terminal => {
            schema_name: "arrivalTerminal",
            ranges: ["Text"],
          }.freeze,
          :boarding_policy => {
            schema_name: "boardingPolicy",
            ranges: ["BoardingPolicyType"],
          }.freeze,
          :carrier => {
            schema_name: "carrier",
            ranges: ["Organization"],
          }.freeze,
          :departure_airport => {
            schema_name: "departureAirport",
            ranges: ["Airport"],
          }.freeze,
          :departure_gate => {
            schema_name: "departureGate",
            ranges: ["Text"],
          }.freeze,
          :departure_terminal => {
            schema_name: "departureTerminal",
            ranges: ["Text"],
          }.freeze,
          :estimated_flight_duration => {
            schema_name: "estimatedFlightDuration",
            ranges: ["Duration", "Text"],
          }.freeze,
          :flight_distance => {
            schema_name: "flightDistance",
            ranges: ["Distance", "Text"],
          }.freeze,
          :flight_number => {
            schema_name: "flightNumber",
            ranges: ["Text"],
          }.freeze,
          :meal_service => {
            schema_name: "mealService",
            ranges: ["Text"],
          }.freeze,
          :seller => {
            schema_name: "seller",
            ranges: ["Organization", "Person"],
          }.freeze,
          :web_checkin_time => {
            schema_name: "webCheckinTime",
            ranges: ["DateTime"],
          }.freeze,
        }.freeze
      end

      def aircraft
        read_property(:aircraft)
      end

      def aircraft=(value)
        write_property(:aircraft, value)
      end

      def arrival_airport
        read_property(:arrival_airport)
      end

      def arrival_airport=(value)
        write_property(:arrival_airport, value)
      end

      def arrival_gate
        read_property(:arrival_gate)
      end

      def arrival_gate=(value)
        write_property(:arrival_gate, value)
      end

      def arrival_terminal
        read_property(:arrival_terminal)
      end

      def arrival_terminal=(value)
        write_property(:arrival_terminal, value)
      end

      def boarding_policy
        read_property(:boarding_policy)
      end

      def boarding_policy=(value)
        write_property(:boarding_policy, value)
      end

      def carrier
        read_property(:carrier)
      end

      def carrier=(value)
        write_property(:carrier, value)
      end

      def departure_airport
        read_property(:departure_airport)
      end

      def departure_airport=(value)
        write_property(:departure_airport, value)
      end

      def departure_gate
        read_property(:departure_gate)
      end

      def departure_gate=(value)
        write_property(:departure_gate, value)
      end

      def departure_terminal
        read_property(:departure_terminal)
      end

      def departure_terminal=(value)
        write_property(:departure_terminal, value)
      end

      def estimated_flight_duration
        read_property(:estimated_flight_duration)
      end

      def estimated_flight_duration=(value)
        write_property(:estimated_flight_duration, value)
      end

      def flight_distance
        read_property(:flight_distance)
      end

      def flight_distance=(value)
        write_property(:flight_distance, value)
      end

      def flight_number
        read_property(:flight_number)
      end

      def flight_number=(value)
        write_property(:flight_number, value)
      end

      def meal_service
        read_property(:meal_service)
      end

      def meal_service=(value)
        write_property(:meal_service, value)
      end

      def seller
        read_property(:seller)
      end

      def seller=(value)
        write_property(:seller, value)
      end

      def web_checkin_time
        read_property(:web_checkin_time)
      end

      def web_checkin_time=(value)
        write_property(:web_checkin_time, value)
      end

    end
  end
end
