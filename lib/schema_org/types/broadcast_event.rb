# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BroadcastEvent
  #
  # An over the air or online broadcast event.
  class BroadcastEvent < Base
    include Mixins::BroadcastEvent

    SCHEMA_NAME = "BroadcastEvent"
    SCHEMA_TYPES = [self, SchemaOrg::PublicationEvent, SchemaOrg::Event, SchemaOrg::Thing].freeze

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
