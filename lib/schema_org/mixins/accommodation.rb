module SchemaOrg
  module Mixins
    module Accommodation
      include Place

      def self.schema_property_definitions
        {
          :amenity_feature => {
            schema_name: "amenityFeature",
            ranges: ["LocationFeatureSpecification"],
          }.freeze,
          :bed => {
            schema_name: "bed",
            ranges: ["BedDetails", "BedType", "Text"],
          }.freeze,
          :floor_size => {
            schema_name: "floorSize",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :number_of_rooms => {
            schema_name: "numberOfRooms",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :occupancy => {
            schema_name: "occupancy",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :permitted_usage => {
            schema_name: "permittedUsage",
            ranges: ["Text"],
          }.freeze,
          :pets_allowed => {
            schema_name: "petsAllowed",
            ranges: ["Boolean", "Text"],
          }.freeze,
        }.freeze
      end

      def amenity_feature
        read_property(:amenity_feature)
      end

      def amenity_feature=(value)
        write_property(:amenity_feature, value)
      end

      def bed
        read_property(:bed)
      end

      def bed=(value)
        write_property(:bed, value)
      end

      def floor_size
        read_property(:floor_size)
      end

      def floor_size=(value)
        write_property(:floor_size, value)
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

      def permitted_usage
        read_property(:permitted_usage)
      end

      def permitted_usage=(value)
        write_property(:permitted_usage, value)
      end

      def pets_allowed
        read_property(:pets_allowed)
      end

      def pets_allowed=(value)
        write_property(:pets_allowed, value)
      end

    end
  end
end
