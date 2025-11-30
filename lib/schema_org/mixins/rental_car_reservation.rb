require "active_support/concern"

module SchemaOrg
  module Mixins
    module RentalCarReservation
      extend ActiveSupport::Concern

      include Reservation

      included do
        option :dropoff_location, optional: true # Where a rental car can be dropped off.
        option :dropoff_time, optional: true # When a rental car can be dropped off.
        option :pickup_location, optional: true # Where a taxi will pick up a passenger or a rental car can be picked up.
        option :pickup_time, optional: true # When a taxi will pick up a passenger or a rental car can be picked up.
      end
    end
  end
end
