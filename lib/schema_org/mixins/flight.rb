# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Flight
      include Trip

      def self.schema_property_definitions
        {
          aircraft: {
            schema_name: "aircraft",
            schema_url: "https://schema.org/aircraft",
            comment_lines: ["The kind of aircraft (e.g., \"Boeing 747\")."].freeze,
            ranges: ["Text", "Vehicle"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          arrival_airport: {
            schema_name: "arrivalAirport",
            schema_url: "https://schema.org/arrivalAirport",
            comment_lines: ["The airport where the flight terminates."].freeze,
            ranges: ["Airport"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          arrival_gate: {
            schema_name: "arrivalGate",
            schema_url: "https://schema.org/arrivalGate",
            comment_lines: ["Identifier of the flight's arrival gate."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          arrival_terminal: {
            schema_name: "arrivalTerminal",
            schema_url: "https://schema.org/arrivalTerminal",
            comment_lines: ["Identifier of the flight's arrival terminal."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          boarding_policy: {
            schema_name: "boardingPolicy",
            schema_url: "https://schema.org/boardingPolicy",
            comment_lines: ["The type of boarding policy used by the airline (e.g. zone-based or group-based)."].freeze,
            ranges: ["BoardingPolicyType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          carrier: {
            schema_name: "carrier",
            schema_url: "https://schema.org/carrier",
            comment_lines: ["'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "provider",
            supersedes: nil
          }.freeze,
          departure_airport: {
            schema_name: "departureAirport",
            schema_url: "https://schema.org/departureAirport",
            comment_lines: ["The airport where the flight originates."].freeze,
            ranges: ["Airport"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_gate: {
            schema_name: "departureGate",
            schema_url: "https://schema.org/departureGate",
            comment_lines: ["Identifier of the flight's departure gate."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          departure_terminal: {
            schema_name: "departureTerminal",
            schema_url: "https://schema.org/departureTerminal",
            comment_lines: ["Identifier of the flight's departure terminal."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          estimated_flight_duration: {
            schema_name: "estimatedFlightDuration",
            schema_url: "https://schema.org/estimatedFlightDuration",
            comment_lines: ["The estimated time the flight will take."].freeze,
            ranges: ["Duration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          flight_distance: {
            schema_name: "flightDistance",
            schema_url: "https://schema.org/flightDistance",
            comment_lines: ["The distance of the flight."].freeze,
            ranges: ["Distance", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          flight_number: {
            schema_name: "flightNumber",
            schema_url: "https://schema.org/flightNumber",
            comment_lines: ["The unique identifier for a flight including the airline IATA code. For example, if describing United flight 110, where the IATA code for United is 'UA', the flightNumber is 'UA110'."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          meal_service: {
            schema_name: "mealService",
            schema_url: "https://schema.org/mealService",
            comment_lines: ["Description of the meals that will be provided or available for purchase."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seller: {
            schema_name: "seller",
            schema_url: "https://schema.org/seller",
            comment_lines: ["An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["merchant", "vendor"].freeze
          }.freeze,
          web_checkin_time: {
            schema_name: "webCheckinTime",
            schema_url: "https://schema.org/webCheckinTime",
            comment_lines: ["The time when a passenger can check into the flight online."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The kind of aircraft (e.g., "Boeing 747").
      def aircraft
        read_property(:aircraft)
      end

      # The kind of aircraft (e.g., "Boeing 747").
      def aircraft=(value)
        write_property(:aircraft, value)
      end

      # The airport where the flight terminates.
      def arrival_airport
        read_property(:arrival_airport)
      end

      # The airport where the flight terminates.
      def arrival_airport=(value)
        write_property(:arrival_airport, value)
      end

      # Identifier of the flight's arrival gate.
      def arrival_gate
        read_property(:arrival_gate)
      end

      # Identifier of the flight's arrival gate.
      def arrival_gate=(value)
        write_property(:arrival_gate, value)
      end

      # Identifier of the flight's arrival terminal.
      def arrival_terminal
        read_property(:arrival_terminal)
      end

      # Identifier of the flight's arrival terminal.
      def arrival_terminal=(value)
        write_property(:arrival_terminal, value)
      end

      # The type of boarding policy used by the airline (e.g. zone-based or group-based).
      def boarding_policy
        read_property(:boarding_policy)
      end

      # The type of boarding policy used by the airline (e.g. zone-based or group-based).
      def boarding_policy=(value)
        write_property(:boarding_policy, value)
      end

      # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights.
      # Superseded by `provider`.
      def carrier
        read_property(:carrier)
      end

      # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights.
      # Superseded by `provider`.
      def carrier=(value)
        write_property(:carrier, value)
      end

      # The airport where the flight originates.
      def departure_airport
        read_property(:departure_airport)
      end

      # The airport where the flight originates.
      def departure_airport=(value)
        write_property(:departure_airport, value)
      end

      # Identifier of the flight's departure gate.
      def departure_gate
        read_property(:departure_gate)
      end

      # Identifier of the flight's departure gate.
      def departure_gate=(value)
        write_property(:departure_gate, value)
      end

      # Identifier of the flight's departure terminal.
      def departure_terminal
        read_property(:departure_terminal)
      end

      # Identifier of the flight's departure terminal.
      def departure_terminal=(value)
        write_property(:departure_terminal, value)
      end

      # The estimated time the flight will take.
      def estimated_flight_duration
        read_property(:estimated_flight_duration)
      end

      # The estimated time the flight will take.
      def estimated_flight_duration=(value)
        write_property(:estimated_flight_duration, value)
      end

      # The distance of the flight.
      def flight_distance
        read_property(:flight_distance)
      end

      # The distance of the flight.
      def flight_distance=(value)
        write_property(:flight_distance, value)
      end

      # The unique identifier for a flight including the airline IATA code. For example, if describing United flight 110, where the IATA code for United is 'UA', the flightNumber is 'UA110'.
      def flight_number
        read_property(:flight_number)
      end

      # The unique identifier for a flight including the airline IATA code. For example, if describing United flight 110, where the IATA code for United is 'UA', the flightNumber is 'UA110'.
      def flight_number=(value)
        write_property(:flight_number, value)
      end

      # Description of the meals that will be provided or available for purchase.
      def meal_service
        read_property(:meal_service)
      end

      # Description of the meals that will be provided or available for purchase.
      def meal_service=(value)
        write_property(:meal_service, value)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `merchant`.
      # Supersedes `vendor`.
      def seller
        read_property(:seller)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `merchant`.
      # Supersedes `vendor`.
      def seller=(value)
        write_property(:seller, value)
      end

      # The time when a passenger can check into the flight online.
      def web_checkin_time
        read_property(:web_checkin_time)
      end

      # The time when a passenger can check into the flight online.
      def web_checkin_time=(value)
        write_property(:web_checkin_time, value)
      end
    end
  end
end
