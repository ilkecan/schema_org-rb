module SchemaOrg
  module Mixins
    module MoveAction
      include Action

      def self.schema_property_definitions
        {
          :from_location => {
            schema_name: "fromLocation",
            ranges: ["Place"],
          }.freeze,
          :to_location => {
            schema_name: "toLocation",
            ranges: ["Place"],
          }.freeze,
        }.freeze
      end

      def from_location
        read_property(:from_location)
      end

      def from_location=(value)
        write_property(:from_location, value)
      end

      def to_location
        read_property(:to_location)
      end

      def to_location=(value)
        write_property(:to_location, value)
      end

    end
  end
end
