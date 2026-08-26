module SchemaOrg
  module Mixins
    module HowToSupply
      include HowToItem

      def self.schema_property_definitions
        {
          :estimated_cost => {
            schema_name: "estimatedCost",
            ranges: ["MonetaryAmount", "Text"],
          }.freeze,
        }.freeze
      end

      def estimated_cost
        read_property(:estimated_cost)
      end

      def estimated_cost=(value)
        write_property(:estimated_cost, value)
      end

    end
  end
end
