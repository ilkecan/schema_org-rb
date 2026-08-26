module SchemaOrg
  module Mixins
    module Map
      include CreativeWork

      def self.schema_property_definitions
        {
          :map_type => {
            schema_name: "mapType",
            ranges: ["MapCategoryType"],
          }.freeze,
        }.freeze
      end

      def map_type
        read_property(:map_type)
      end

      def map_type=(value)
        write_property(:map_type, value)
      end

    end
  end
end
