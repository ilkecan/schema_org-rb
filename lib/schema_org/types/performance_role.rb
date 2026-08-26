# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PerformanceRole
  #
  # A PerformanceRole is a Role that some entity places with regard to a theatrical performance, e.g. in a Movie, TVSeries etc.
  class PerformanceRole < Base
    include Mixins::PerformanceRole

    SCHEMA_NAME = "PerformanceRole"
    SCHEMA_TYPES = [self, SchemaOrg::Role, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
