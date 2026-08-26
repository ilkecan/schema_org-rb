# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Continent
  #
  # One of the continents (for example, Europe or Africa).
  class Continent < Base
    include Mixins::Continent

    SCHEMA_NAME = "Continent"
    SCHEMA_TYPES = [self, SchemaOrg::Landform, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
