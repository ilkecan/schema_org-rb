require "active_support/concern"

module SchemaOrg
  module Mixins
    module Flight
      extend ActiveSupport::Concern

      include Trip

      included do
        option :aircraft # The kind of aircraft (e.g., "Boeing 747").
        option :arrival_airport # The airport where the flight terminates.
        option :arrival_gate # Identifier of the flight's arrival gate.
        option :arrival_terminal # Identifier of the flight's arrival terminal.
        option :boarding_policy # The type of boarding policy used by the airline (e.g. zone-based or group-based).
        option :carrier # 'carrier' is an out-dated term indicating the 'provider' for parcel delivery and flights. Superseded by `provider`.
        option :departure_airport # The airport where the flight originates.
        option :departure_gate # Identifier of the flight's departure gate.
        option :departure_terminal # Identifier of the flight's departure terminal.
        option :estimated_flight_duration # The estimated time the flight will take.
        option :flight_distance # The distance of the flight.
        option :flight_number # The unique identifier for a flight including the airline IATA code. For example, if describing United flight 110, where the IATA code for United is 'UA', the flightNumber is 'UA110'.
        option :meal_service # Description of the meals that will be provided or available for purchase.
        option :web_checkin_time # The time when a passenger can check into the flight online.
        option :seller # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider. Supersedes `vendor`.
      end
    end
  end
end
