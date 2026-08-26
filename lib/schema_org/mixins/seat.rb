module SchemaOrg
  module Mixins
    module Seat
      include Intangible

      def self.schema_property_definitions
        {
          :seat_number => {
            schema_name: "seatNumber",
            ranges: ["Text"],
          }.freeze,
          :seat_row => {
            schema_name: "seatRow",
            ranges: ["Text"],
          }.freeze,
          :seat_section => {
            schema_name: "seatSection",
            ranges: ["Text"],
          }.freeze,
          :seating_type => {
            schema_name: "seatingType",
            ranges: ["QualitativeValue", "Text"],
          }.freeze,
        }.freeze
      end

      def seat_number
        read_property(:seat_number)
      end

      def seat_number=(value)
        write_property(:seat_number, value)
      end

      def seat_row
        read_property(:seat_row)
      end

      def seat_row=(value)
        write_property(:seat_row, value)
      end

      def seat_section
        read_property(:seat_section)
      end

      def seat_section=(value)
        write_property(:seat_section, value)
      end

      def seating_type
        read_property(:seating_type)
      end

      def seating_type=(value)
        write_property(:seating_type, value)
      end

    end
  end
end
