require "active_support/concern"

module SchemaOrg
  module Mixins
    module PropertyValueSpecification
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :default_value, optional: true # The default value of the input.  For properties that expect a literal, the default is a literal value, for properties that expect an object, it's an ID reference to one of the current values.
        option :max_value, optional: true # The upper value of some characteristic or property.
        option :min_value, optional: true # The lower value of some characteristic or property.
        option :multiple_values, optional: true # Whether multiple values are allowed for the property.  Default is false.
        option :readonly_value, optional: true # Whether or not a property is mutable.  Default is false. Specifying this for a property that also has a value makes it act similar to a "hidden" input in an HTML form.
        option :step_value, optional: true # The stepValue attribute indicates the granularity that is expected (and required) of the value in a PropertyValueSpecification.
        option :value_max_length, optional: true # Specifies the allowed range for number of characters in a literal value.
        option :value_min_length, optional: true # Specifies the minimum allowed range for number of characters in a literal value.
        option :value_name, optional: true # Indicates the name of the PropertyValueSpecification to be used in URL templates and form encoding in a manner analogous to HTML's input@name.
        option :value_pattern, optional: true # Specifies a regular expression for testing literal values according to the HTML spec.
        option :value_required, optional: true # Whether the property must be filled in to complete the action.  Default is false.
      end
    end
  end
end
