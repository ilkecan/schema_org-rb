module SchemaOrg
  module Mixins
    module House
      include Accommodation

      def self.schema_property_definitions
        {
          :number_of_rooms => {
            schema_name: "numberOfRooms",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def number_of_rooms
        read_property(:number_of_rooms)
      end

      def number_of_rooms=(value)
        write_property(:number_of_rooms, value)
      end

    end
  end
end
