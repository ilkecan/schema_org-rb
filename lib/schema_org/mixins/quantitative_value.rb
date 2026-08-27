# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module QuantitativeValue
      include StructuredValue

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
          max_value: {
            schema_name: "maxValue",
            schema_url: "https://schema.org/maxValue",
            comment_lines: ["The upper value of some characteristic or property."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          min_value: {
            schema_name: "minValue",
            schema_url: "https://schema.org/minValue",
            comment_lines: ["The lower value of some characteristic or property."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unit_code: {
            schema_name: "unitCode",
            schema_url: "https://schema.org/unitCode",
            comment_lines: ["The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unit_text: {
            schema_name: "unitText",
            schema_url: "https://schema.org/unitText",
            comment_lines: ["A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for", "<a href='unitCode'>unitCode</a>."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value: {
            schema_name: "value",
            schema_url: "https://schema.org/value",
            comment_lines: ["The value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\\n\\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator."].freeze,
            ranges: ["Boolean", "Number", "StructuredValue", "Text"].freeze,
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

      # The upper value of some characteristic or property.
      def max_value
        read_property(:max_value)
      end

      # The upper value of some characteristic or property.
      def max_value=(value)
        write_property(:max_value, value)
      end

      # The lower value of some characteristic or property.
      def min_value
        read_property(:min_value)
      end

      # The lower value of some characteristic or property.
      def min_value=(value)
        write_property(:min_value, value)
      end

      # The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
      def unit_code
        read_property(:unit_code)
      end

      # The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
      def unit_code=(value)
        write_property(:unit_code, value)
      end

      # A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for
      # <a href='unitCode'>unitCode</a>.
      def unit_text
        read_property(:unit_text)
      end

      # A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for
      # <a href='unitCode'>unitCode</a>.
      def unit_text=(value)
        write_property(:unit_text, value)
      end

      # The value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\n\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def value
        read_property(:value)
      end

      # The value of a [[QuantitativeValue]] (including [[Observation]]) or property value node.\n\n* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.\n* For [[PropertyValue]], it can be 'Text', 'Number', 'Boolean', or 'StructuredValue'.\n* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similar Unicode symbols.\n* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.
      def value=(value)
        write_property(:value, value)
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
