# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PublicationEvent
  #
  # A PublicationEvent corresponds indifferently to the event of publication for a CreativeWork of any type, e.g. a broadcast event, an on-demand event, a book/journal publication via a variety of delivery media.
  class PublicationEvent < Base
    include Mixins::PublicationEvent

    SCHEMA_NAME = "PublicationEvent"
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
