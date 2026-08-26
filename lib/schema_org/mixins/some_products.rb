module SchemaOrg
  module Mixins
    module SomeProducts
      include Product

      def self.schema_property_definitions
        {
          :inventory_level => {
            schema_name: "inventoryLevel",
            ranges: ["QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def inventory_level
        read_property(:inventory_level)
      end

      def inventory_level=(value)
        write_property(:inventory_level, value)
      end

    end
  end
end
