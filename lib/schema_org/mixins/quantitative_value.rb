module SchemaOrg
  module Mixins
    module QuantitativeValue
      include StructuredValue

      def self.schema_property_definitions
        {
          :additional_property => {
            schema_name: "additionalProperty",
            ranges: ["PropertyValue"],
          }.freeze,
          :max_value => {
            schema_name: "maxValue",
            ranges: ["Number"],
          }.freeze,
          :min_value => {
            schema_name: "minValue",
            ranges: ["Number"],
          }.freeze,
          :unit_code => {
            schema_name: "unitCode",
            ranges: ["Text", "URL"],
          }.freeze,
          :unit_text => {
            schema_name: "unitText",
            ranges: ["Text"],
          }.freeze,
          :value => {
            schema_name: "value",
            ranges: ["Boolean", "Number", "StructuredValue", "Text"],
          }.freeze,
          :value_reference => {
            schema_name: "valueReference",
            ranges: ["Enumeration", "PropertyValue", "QualitativeValue", "QuantitativeValue", "StructuredValue"],
          }.freeze,
        }.freeze
      end

      def additional_property
        read_property(:additional_property)
      end

      def additional_property=(value)
        write_property(:additional_property, value)
      end

      def max_value
        read_property(:max_value)
      end

      def max_value=(value)
        write_property(:max_value, value)
      end

      def min_value
        read_property(:min_value)
      end

      def min_value=(value)
        write_property(:min_value, value)
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

      def value
        read_property(:value)
      end

      def value=(value)
        write_property(:value, value)
      end

      def value_reference
        read_property(:value_reference)
      end

      def value_reference=(value)
        write_property(:value_reference, value)
      end

    end
  end
end
