require "active_support/concern"

module SchemaOrg
  module Mixins
    module QualitativeValue
      extend ActiveSupport::Concern

      include Enumeration

      included do
        option :additional_property # A property-value pair representing an additional characteristic of the entity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.\n\nNote: Publishers should be aware that applications designed to use specific schema.org properties (e.g. https://schema.org/width, https://schema.org/color, https://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
        option :equal # This ordering relation for qualitative values indicates that the subject is equal to the object.
        option :greater # This ordering relation for qualitative values indicates that the subject is greater than the object.
        option :greater_or_equal # This ordering relation for qualitative values indicates that the subject is greater than or equal to the object.
        option :lesser # This ordering relation for qualitative values indicates that the subject is lesser than the object.
        option :lesser_or_equal # This ordering relation for qualitative values indicates that the subject is lesser than or equal to the object.
        option :non_equal # This ordering relation for qualitative values indicates that the subject is not equal to the object.
        option :value_reference # A secondary value that provides additional information on the original value, e.g. a reference temperature or a type of measurement.
      end
    end
  end
end
