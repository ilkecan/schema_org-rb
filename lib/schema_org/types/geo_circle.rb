# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/GeoCircle
  #
  # A GeoCircle is a GeoShape representing a circular geographic area. As it is a GeoShape
  #           it provides the simple textual property 'circle', but also allows the combination of postalCode alongside geoRadius.
  #           The center of the circle can be indicated via the 'geoMidpoint' property, or more approximately using 'address', 'postalCode'.
  class GeoCircle < Base
    include Mixins::GeoCircle

    SCHEMA_NAME = "GeoCircle"
    SCHEMA_TYPES = [self, SchemaOrg::GeoShape, SchemaOrg::StructuredValue, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
