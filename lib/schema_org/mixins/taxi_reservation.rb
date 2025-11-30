require "active_support/concern"

module SchemaOrg
  module Mixins
    module TaxiReservation
      extend ActiveSupport::Concern

      include Reservation

      included do
        option :party_size, optional: true # Number of people the reservation should accommodate.
        option :pickup_location, optional: true # Where a taxi will pick up a passenger or a rental car can be picked up.
        option :pickup_time, optional: true # When a taxi will pick up a passenger or a rental car can be picked up.
      end
    end
  end
end
