module SchemaOrg
  module Mixins
    module TypeAndQuantityNode
      include StructuredValue

      def self.schema_property_definitions
        {
          :amount_of_this_good => {
            schema_name: "amountOfThisGood",
            ranges: ["Number"],
          }.freeze,
          :business_function => {
            schema_name: "businessFunction",
            ranges: ["BusinessFunction"],
          }.freeze,
          :type_of_good => {
            schema_name: "typeOfGood",
            ranges: ["Product", "Service"],
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

      def amount_of_this_good
        read_property(:amount_of_this_good)
      end

      def amount_of_this_good=(value)
        write_property(:amount_of_this_good, value)
      end

      def business_function
        read_property(:business_function)
      end

      def business_function=(value)
        write_property(:business_function, value)
      end

      def type_of_good
        read_property(:type_of_good)
      end

      def type_of_good=(value)
        write_property(:type_of_good, value)
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
