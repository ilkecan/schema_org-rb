module SchemaOrg
  module Mixins
    module FlightReservation
      include Reservation

      def self.schema_property_definitions
        {
          :boarding_group => {
            schema_name: "boardingGroup",
            ranges: ["Text"],
          }.freeze,
          :passenger_priority_status => {
            schema_name: "passengerPriorityStatus",
            ranges: ["QualitativeValue", "Text"],
          }.freeze,
          :passenger_sequence_number => {
            schema_name: "passengerSequenceNumber",
            ranges: ["Text"],
          }.freeze,
          :security_screening => {
            schema_name: "securityScreening",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def boarding_group
        read_property(:boarding_group)
      end

      def boarding_group=(value)
        write_property(:boarding_group, value)
      end

      def passenger_priority_status
        read_property(:passenger_priority_status)
      end

      def passenger_priority_status=(value)
        write_property(:passenger_priority_status, value)
      end

      def passenger_sequence_number
        read_property(:passenger_sequence_number)
      end

      def passenger_sequence_number=(value)
        write_property(:passenger_sequence_number, value)
      end

      def security_screening
        read_property(:security_screening)
      end

      def security_screening=(value)
        write_property(:security_screening, value)
      end

    end
  end
end
