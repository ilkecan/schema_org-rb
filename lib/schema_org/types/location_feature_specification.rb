# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/LocationFeatureSpecification
  #
  # Specifies a location feature by providing a structured value representing a feature of an accommodation as a property-value pair of varying degrees of formality.
  class LocationFeatureSpecification < Base
    include Mixins::LocationFeatureSpecification

    SCHEMA_NAME = "LocationFeatureSpecification"
    SCHEMA_TYPES = [self, SchemaOrg::PropertyValue, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
  end
end
