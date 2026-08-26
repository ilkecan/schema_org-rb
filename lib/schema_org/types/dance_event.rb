# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DanceEvent
  #
  # Event type: A social dance.
  class DanceEvent < Base
    include Mixins::DanceEvent

    SCHEMA_NAME = "DanceEvent"
    SCHEMA_TYPES = [self, SchemaOrg::Event, SchemaOrg::Thing].freeze

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
