# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PropertyValueSpecification
      include Intangible

      def self.schema_property_definitions
        {
          default_value: {
            schema_name: "defaultValue",
            schema_url: "https://schema.org/defaultValue",
            comment_lines: ["The default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values."].freeze,
            ranges: ["Text", "Thing"].freeze,
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
          multiple_values: {
            schema_name: "multipleValues",
            schema_url: "https://schema.org/multipleValues",
            comment_lines: ["Whether multiple values are allowed for the property.  Default is false."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          readonly_value: {
            schema_name: "readonlyValue",
            schema_url: "https://schema.org/readonlyValue",
            comment_lines: ["Whether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a \"hidden\" input in an HTML form."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          step_value: {
            schema_name: "stepValue",
            schema_url: "https://schema.org/stepValue",
            comment_lines: ["The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_max_length: {
            schema_name: "valueMaxLength",
            schema_url: "https://schema.org/valueMaxLength",
            comment_lines: ["Specifies the allowed range for number of characters in a literal value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_min_length: {
            schema_name: "valueMinLength",
            schema_url: "https://schema.org/valueMinLength",
            comment_lines: ["Specifies the minimum allowed range for number of characters in a literal value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_name: {
            schema_name: "valueName",
            schema_url: "https://schema.org/valueName",
            comment_lines: ["Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_pattern: {
            schema_name: "valuePattern",
            schema_url: "https://schema.org/valuePattern",
            comment_lines: ["Specifies a regular expression for testing literal values according to the HTML spec."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          value_required: {
            schema_name: "valueRequired",
            schema_url: "https://schema.org/valueRequired",
            comment_lines: ["Whether the property must be filled in to complete the action.  Default is false."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values.
      def default_value
        read_property(:default_value)
      end

      # The default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values.
      def default_value=(value)
        write_property(:default_value, value)
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

      # Whether multiple values are allowed for the property.  Default is false.
      def multiple_values
        read_property(:multiple_values)
      end

      # Whether multiple values are allowed for the property.  Default is false.
      def multiple_values=(value)
        write_property(:multiple_values, value)
      end

      # Whether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a "hidden" input in an HTML form.
      def readonly_value
        read_property(:readonly_value)
      end

      # Whether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a "hidden" input in an HTML form.
      def readonly_value=(value)
        write_property(:readonly_value, value)
      end

      # The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification.
      def step_value
        read_property(:step_value)
      end

      # The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification.
      def step_value=(value)
        write_property(:step_value, value)
      end

      # Specifies the allowed range for number of characters in a literal value.
      def value_max_length
        read_property(:value_max_length)
      end

      # Specifies the allowed range for number of characters in a literal value.
      def value_max_length=(value)
        write_property(:value_max_length, value)
      end

      # Specifies the minimum allowed range for number of characters in a literal value.
      def value_min_length
        read_property(:value_min_length)
      end

      # Specifies the minimum allowed range for number of characters in a literal value.
      def value_min_length=(value)
        write_property(:value_min_length, value)
      end

      # Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name.
      def value_name
        read_property(:value_name)
      end

      # Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name.
      def value_name=(value)
        write_property(:value_name, value)
      end

      # Specifies a regular expression for testing literal values according to the HTML spec.
      def value_pattern
        read_property(:value_pattern)
      end

      # Specifies a regular expression for testing literal values according to the HTML spec.
      def value_pattern=(value)
        write_property(:value_pattern, value)
      end

      # Whether the property must be filled in to complete the action.  Default is false.
      def value_required
        read_property(:value_required)
      end

      # Whether the property must be filled in to complete the action.  Default is false.
      def value_required=(value)
        write_property(:value_required, value)
      end
    end
  end
end
