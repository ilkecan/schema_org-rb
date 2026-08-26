module SchemaOrg
  module Mixins
    module QualitativeValue
      include Enumeration

      def self.schema_property_definitions
        {
          :additional_property => {
            schema_name: "additionalProperty",
            ranges: ["PropertyValue"],
          }.freeze,
          :equal => {
            schema_name: "equal",
            ranges: ["QualitativeValue"],
          }.freeze,
          :greater => {
            schema_name: "greater",
            ranges: ["QualitativeValue"],
          }.freeze,
          :greater_or_equal => {
            schema_name: "greaterOrEqual",
            ranges: ["QualitativeValue"],
          }.freeze,
          :lesser => {
            schema_name: "lesser",
            ranges: ["QualitativeValue"],
          }.freeze,
          :lesser_or_equal => {
            schema_name: "lesserOrEqual",
            ranges: ["QualitativeValue"],
          }.freeze,
          :non_equal => {
            schema_name: "nonEqual",
            ranges: ["QualitativeValue"],
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

      def equal
        read_property(:equal)
      end

      def equal=(value)
        write_property(:equal, value)
      end

      def greater
        read_property(:greater)
      end

      def greater=(value)
        write_property(:greater, value)
      end

      def greater_or_equal
        read_property(:greater_or_equal)
      end

      def greater_or_equal=(value)
        write_property(:greater_or_equal, value)
      end

      def lesser
        read_property(:lesser)
      end

      def lesser=(value)
        write_property(:lesser, value)
      end

      def lesser_or_equal
        read_property(:lesser_or_equal)
      end

      def lesser_or_equal=(value)
        write_property(:lesser_or_equal, value)
      end

      def non_equal
        read_property(:non_equal)
      end

      def non_equal=(value)
        write_property(:non_equal, value)
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
