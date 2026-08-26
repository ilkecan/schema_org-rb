# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PerformingGroup
  #
  # A performance group, such as a band, an orchestra, or a circus.
  class PerformingGroup < Base
    include Mixins::PerformingGroup

    SCHEMA_NAME = "PerformingGroup"
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
