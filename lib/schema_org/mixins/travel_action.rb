module SchemaOrg
  module Mixins
    module TravelAction
      include MoveAction

      def self.schema_property_definitions
        {
          :distance => {
            schema_name: "distance",
            ranges: ["Distance"],
          }.freeze,
        }.freeze
      end

      def distance
        read_property(:distance)
      end

      def distance=(value)
        write_property(:distance, value)
      end

    end
  end
end
