# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module ReservationPackage
      include Reservation

      def self.schema_property_definitions
        {
          sub_reservation: {
            schema_name: "subReservation",
            schema_url: "https://schema.org/subReservation",
            comment_lines: ["The individual reservations included in the package. Typically a repeated property."].freeze,
            ranges: ["Reservation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The individual reservations included in the package. Typically a repeated property.
      def sub_reservation
        read_property(:sub_reservation)
      end

      # The individual reservations included in the package. Typically a repeated property.
      def sub_reservation=(value)
        write_property(:sub_reservation, value)
      end
    end
  end
end
