module SchemaOrg
  module Mixins
    module PropertyValueSpecification
      include Intangible

      def self.schema_property_definitions
        {
          :default_value => {
            schema_name: "defaultValue",
            ranges: ["Text", "Thing"],
          }.freeze,
          :max_value => {
            schema_name: "maxValue",
            ranges: ["Number"],
          }.freeze,
          :min_value => {
            schema_name: "minValue",
            ranges: ["Number"],
          }.freeze,
          :multiple_values => {
            schema_name: "multipleValues",
            ranges: ["Boolean"],
          }.freeze,
          :readonly_value => {
            schema_name: "readonlyValue",
            ranges: ["Boolean"],
          }.freeze,
          :step_value => {
            schema_name: "stepValue",
            ranges: ["Number"],
          }.freeze,
          :value_max_length => {
            schema_name: "valueMaxLength",
            ranges: ["Number"],
          }.freeze,
          :value_min_length => {
            schema_name: "valueMinLength",
            ranges: ["Number"],
          }.freeze,
          :value_name => {
            schema_name: "valueName",
            ranges: ["Text"],
          }.freeze,
          :value_pattern => {
            schema_name: "valuePattern",
            ranges: ["Text"],
          }.freeze,
          :value_required => {
            schema_name: "valueRequired",
            ranges: ["Boolean"],
          }.freeze,
        }.freeze
      end

      def default_value
        read_property(:default_value)
      end

      def default_value=(value)
        write_property(:default_value, value)
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

      def multiple_values
        read_property(:multiple_values)
      end

      def multiple_values=(value)
        write_property(:multiple_values, value)
      end

      def readonly_value
        read_property(:readonly_value)
      end

      def readonly_value=(value)
        write_property(:readonly_value, value)
      end

      def step_value
        read_property(:step_value)
      end

      def step_value=(value)
        write_property(:step_value, value)
      end

      def value_max_length
        read_property(:value_max_length)
      end

      def value_max_length=(value)
        write_property(:value_max_length, value)
      end

      def value_min_length
        read_property(:value_min_length)
      end

      def value_min_length=(value)
        write_property(:value_min_length, value)
      end

      def value_name
        read_property(:value_name)
      end

      def value_name=(value)
        write_property(:value_name, value)
      end

      def value_pattern
        read_property(:value_pattern)
      end

      def value_pattern=(value)
        write_property(:value_pattern, value)
      end

      def value_required
        read_property(:value_required)
      end

      def value_required=(value)
        write_property(:value_required, value)
      end

    end
  end
end
