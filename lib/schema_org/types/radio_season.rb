# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RadioSeason
  #
  # Season dedicated to radio broadcast and associated online delivery.
  class RadioSeason < Base
    include Mixins::RadioSeason

    SCHEMA_NAME = "RadioSeason"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWorkSeason, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
