module SchemaOrg
  module Mixins
    module UnitPriceSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          :billing_increment => {
            schema_name: "billingIncrement",
            ranges: ["Number"],
          }.freeze,
          :price_type => {
            schema_name: "priceType",
            ranges: ["Text"],
          }.freeze,
          :reference_quantity => {
            schema_name: "referenceQuantity",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :unit_code => {
            schema_name: "unitCode",
            ranges: ["Text", "URL"],
          }.freeze,
          :unit_text => {
            schema_name: "unitText",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def billing_increment
        read_property(:billing_increment)
      end

      def billing_increment=(value)
        write_property(:billing_increment, value)
      end

      def price_type
        read_property(:price_type)
      end

      def price_type=(value)
        write_property(:price_type, value)
      end

      def reference_quantity
        read_property(:reference_quantity)
      end

      def reference_quantity=(value)
        write_property(:reference_quantity, value)
      end

      def unit_code
        read_property(:unit_code)
      end

      def unit_code=(value)
        write_property(:unit_code, value)
      end

      def unit_text
        read_property(:unit_text)
      end

      def unit_text=(value)
        write_property(:unit_text, value)
      end

    end
  end
end
