module SchemaOrg
  module Mixins
    module HowToItem
      include ListItem

      def self.schema_property_definitions
        {
          :required_quantity => {
            schema_name: "requiredQuantity",
            ranges: ["Number", "QuantitativeValue", "Text"],
          }.freeze,
        }.freeze
      end

      def required_quantity
        read_property(:required_quantity)
      end

      def required_quantity=(value)
        write_property(:required_quantity, value)
      end

    end
  end
end
