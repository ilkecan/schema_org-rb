# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Season
  #
  # NOTE: Superseded by `CreativeWorkSeason`.
  #
  # A media season, e.g. TV, radio, video game etc.
  class Season < Base
    include Mixins::Season

    SCHEMA_NAME = "Season"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
