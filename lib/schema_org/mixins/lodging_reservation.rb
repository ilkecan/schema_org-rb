module SchemaOrg
  module Mixins
    module LodgingReservation
      include Reservation

      def self.schema_property_definitions
        {
          :checkin_time => {
            schema_name: "checkinTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :checkout_time => {
            schema_name: "checkoutTime",
            ranges: ["DateTime", "Time"],
          }.freeze,
          :lodging_unit_description => {
            schema_name: "lodgingUnitDescription",
            ranges: ["Text"],
          }.freeze,
          :lodging_unit_type => {
            schema_name: "lodgingUnitType",
            ranges: ["QualitativeValue", "Text"],
          }.freeze,
          :num_adults => {
            schema_name: "numAdults",
            ranges: ["Integer", "QuantitativeValue"],
          }.freeze,
          :num_children => {
            schema_name: "numChildren",
            ranges: ["Integer", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def checkin_time
        read_property(:checkin_time)
      end

      def checkin_time=(value)
        write_property(:checkin_time, value)
      end

      def checkout_time
        read_property(:checkout_time)
      end

      def checkout_time=(value)
        write_property(:checkout_time, value)
      end

      def lodging_unit_description
        read_property(:lodging_unit_description)
      end

      def lodging_unit_description=(value)
        write_property(:lodging_unit_description, value)
      end

      def lodging_unit_type
        read_property(:lodging_unit_type)
      end

      def lodging_unit_type=(value)
        write_property(:lodging_unit_type, value)
      end

      def num_adults
        read_property(:num_adults)
      end

      def num_adults=(value)
        write_property(:num_adults, value)
      end

      def num_children
        read_property(:num_children)
      end

      def num_children=(value)
        write_property(:num_children, value)
      end

    end
  end
end
