module SchemaOrg
  module Mixins
    module InsertAction
      include AddAction

      def self.schema_property_definitions
        {
          :to_location => {
            schema_name: "toLocation",
            ranges: ["Place"],
          }.freeze,
        }.freeze
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
