module SchemaOrg
  module Mixins
    module HotelRoom
      include Room

      def self.schema_property_definitions
        {
          :bed => {
            schema_name: "bed",
            ranges: ["BedDetails", "BedType", "Text"],
          }.freeze,
          :occupancy => {
            schema_name: "occupancy",
            ranges: ["QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def bed
        read_property(:bed)
      end

      def bed=(value)
        write_property(:bed, value)
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
