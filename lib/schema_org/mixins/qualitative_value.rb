# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module QualitativeValue
      include Enumeration

      def self.schema_property_definitions
        {
          additional_property: {
            schema_name: "additionalProperty",
            schema_url: "https://schema.org/additionalProperty",
            comment_lines: ["A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\\n\\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism."].freeze,
            ranges: ["PropertyValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          equal: {
            schema_name: "equal",
            schema_url: "https://schema.org/equal",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is equal to the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          greater: {
            schema_name: "greater",
            schema_url: "https://schema.org/greater",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is greater than the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          greater_or_equal: {
            schema_name: "greaterOrEqual",
            schema_url: "https://schema.org/greaterOrEqual",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is greater than or equal to the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lesser: {
            schema_name: "lesser",
            schema_url: "https://schema.org/lesser",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is lesser than the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          lesser_or_equal: {
            schema_name: "lesserOrEqual",
            schema_url: "https://schema.org/lesserOrEqual",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is lesser than or equal to the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          non_equal: {
            schema_name: "nonEqual",
            schema_url: "https://schema.org/nonEqual",
            comment_lines: ["This ordering relation for qualitative values indicates that the subject is not equal to the object."].freeze,
            ranges: ["QualitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_reference: {
            schema_name: "valueReference",
            schema_url: "https://schema.org/valueReference",
            comment_lines: ["A secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement."].freeze,
            ranges: ["DefinedTerm", "Enumeration", "MeasurementTypeEnumeration", "PropertyValue", "QualitativeValue", "QuantitativeValue", "StructuredValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property
        read_property(:additional_property)
      end

      # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
      def additional_property=(value)
        write_property(:additional_property, value)
      end

      # This ordering relation for qualitative values indicates that the subject is equal to the object.
      def equal
        read_property(:equal)
      end

      # This ordering relation for qualitative values indicates that the subject is equal to the object.
      def equal=(value)
        write_property(:equal, value)
      end

      # This ordering relation for qualitative values indicates that the subject is greater than the object.
      def greater
        read_property(:greater)
      end

      # This ordering relation for qualitative values indicates that the subject is greater than the object.
      def greater=(value)
        write_property(:greater, value)
      end

      # This ordering relation for qualitative values indicates that the subject is greater than or equal to the object.
      def greater_or_equal
        read_property(:greater_or_equal)
      end

      # This ordering relation for qualitative values indicates that the subject is greater than or equal to the object.
      def greater_or_equal=(value)
        write_property(:greater_or_equal, value)
      end

      # This ordering relation for qualitative values indicates that the subject is lesser than the object.
      def lesser
        read_property(:lesser)
      end

      # This ordering relation for qualitative values indicates that the subject is lesser than the object.
      def lesser=(value)
        write_property(:lesser, value)
      end

      # This ordering relation for qualitative values indicates that the subject is lesser than or equal to the object.
      def lesser_or_equal
        read_property(:lesser_or_equal)
      end

      # This ordering relation for qualitative values indicates that the subject is lesser than or equal to the object.
      def lesser_or_equal=(value)
        write_property(:lesser_or_equal, value)
      end

      # This ordering relation for qualitative values indicates that the subject is not equal to the object.
      def non_equal
        read_property(:non_equal)
      end

      # This ordering relation for qualitative values indicates that the subject is not equal to the object.
      def non_equal=(value)
        write_property(:non_equal, value)
      end

      # A secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement.
      def value_reference
        read_property(:value_reference)
      end

      # A secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement.
      def value_reference=(value)
        write_property(:value_reference, value)
      end
    end
  end
end
