module SchemaOrg
  module Mixins
    module CompoundPriceSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          :price_component => {
            schema_name: "priceComponent",
            ranges: ["PriceSpecification"],
          }.freeze,
        }.freeze
      end

      def price_component
        read_property(:price_component)
      end

      def price_component=(value)
        write_property(:price_component, value)
      end

    end
  end
end
