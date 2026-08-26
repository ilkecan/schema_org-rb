module SchemaOrg
  module Mixins
    module SingleFamilyResidence
      include House

      def self.schema_property_definitions
        {
          :number_of_rooms => {
            schema_name: "numberOfRooms",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :occupancy => {
            schema_name: "occupancy",
            ranges: ["QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def number_of_rooms
        read_property(:number_of_rooms)
      end

      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end

      def occupancy
        read_property(:occupancy)
      end

      def occupancy=(value)
        write_property(:occupancy, value)
      end

    end
  end
end
