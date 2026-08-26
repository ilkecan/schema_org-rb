module SchemaOrg
  module Mixins
    module ReservationPackage
      include Reservation

      def self.schema_property_definitions
        {
          :sub_reservation => {
            schema_name: "subReservation",
            ranges: ["Reservation"],
          }.freeze,
        }.freeze
      end

      def sub_reservation
        read_property(:sub_reservation)
      end

      def sub_reservation=(value)
        write_property(:sub_reservation, value)
      end

    end
  end
end
