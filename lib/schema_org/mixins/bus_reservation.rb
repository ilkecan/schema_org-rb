module SchemaOrg
  module Mixins
    module BusReservation
      include Reservation

      def self.schema_property_definitions
        {
        }.freeze
      end

    end
  end
end
