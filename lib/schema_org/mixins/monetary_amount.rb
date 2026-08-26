module SchemaOrg
  module Mixins
    module MonetaryAmount
      include StructuredValue

      def self.schema_property_definitions
        {
          :currency => {
            schema_name: "currency",
            ranges: ["Text"],
          }.freeze,
          :max_value => {
            schema_name: "maxValue",
            ranges: ["Number"],
          }.freeze,
          :min_value => {
            schema_name: "minValue",
            ranges: ["Number"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :value => {
            schema_name: "value",
            ranges: ["Boolean", "Number", "StructuredValue", "Text"],
          }.freeze,
        }.freeze
      end

      def currency
        read_property(:currency)
      end

      def currency=(value)
        write_property(:currency, value)
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

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

      def value
        read_property(:value)
      end

      def value=(value)
        write_property(:value, value)
      end

    end
  end
end
