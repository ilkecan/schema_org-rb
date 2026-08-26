# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RiverBodyOfWater
  #
  # A river (for example, the broad majestic Shannon).
  class RiverBodyOfWater < Base
    include Mixins::RiverBodyOfWater

    SCHEMA_NAME = "RiverBodyOfWater"
    SCHEMA_TYPES = [self, SchemaOrg::BodyOfWater, SchemaOrg::Landform, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
