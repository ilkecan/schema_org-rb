require "active_support/concern"

module SchemaOrg
  module Mixins
    module Flight
      extend ActiveSupport::Concern

      include Trip

      included do
        option :aircraft, optional: true # The kind of aircraft (e.g., "Boeing 747").
        option :arrival_airport, optional: true # The airport where the flight terminates.
        option :arrival_gate, optional: true # Identifier of the flight's arrival gate.
        option :arrival_terminal, optional: true # Identifier of the flight's arrival terminal.
        option :boarding_policy, optional: true # The type of boarding policy used by the airline (e.g. zone-based or group-based).
        option :carrier, optional: true # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights. Superseded by `provider`.
        option :departure_airport, optional: true # The airport where the flight originates.
        option :departure_gate, optional: true # Identifier of the flight's departure gate.
        option :departure_terminal, optional: true # Identifier of the flight's departure terminal.
        option :estimated_flight_duration, optional: true # The estimated time the flight will take.
        option :flight_distance, optional: true # The distance of the flight.
        option :flight_number, optional: true # The unique identifier for a flight including the airline IATA code. For example, if describing United flight 110, where the IATA code for United is 'UA', the flightNumber is 'UA110'.
        option :meal_service, optional: true # Description of the meals that will be provided or available for purchase.
        option :web_checkin_time, optional: true # The time when a passenger can check into the flight online.
        option :seller, optional: true # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider. Supersedes `vendor`.
      end
    end
  end
end
