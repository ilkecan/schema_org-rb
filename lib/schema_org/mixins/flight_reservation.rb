require "active_support/concern"

module SchemaOrg
  module Mixins
    module FlightReservation
      extend ActiveSupport::Concern

      include Reservation

      included do
        option :boarding_group, optional: true # The airline-specific indicator of boarding order / preference.
        option :passenger_priority_status, optional: true # The priority status assigned to a passenger for security or boarding (e.g. FastTrack or Priority).
        option :passenger_sequence_number, optional: true # The passenger's sequence number as assigned by the airline.
        option :security_screening, optional: true # The type of security screening the passenger is subject to.
      end
    end
  end
end
