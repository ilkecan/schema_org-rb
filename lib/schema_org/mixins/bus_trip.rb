require "active_support/concern"

module SchemaOrg
  module Mixins
    module BusTrip
      extend ActiveSupport::Concern

      include Trip

      included do
        option :arrival_bus_stop, optional: true # The stop or station from which the bus arrives.
        option :bus_name, optional: true # The name of the bus (e.g. Bolt Express).
        option :bus_number, optional: true # The unique identifier for the bus.
        option :departure_bus_stop, optional: true # The stop or station from which the bus departs.
      end
    end
  end
end
