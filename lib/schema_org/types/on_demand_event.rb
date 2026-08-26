# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/OnDemandEvent
  #
  # A publication event, e.g. catch-up TV or radio podcast, during which a program is available on-demand.
  class OnDemandEvent < Base
    include Mixins::OnDemandEvent

    SCHEMA_NAME = "OnDemandEvent"
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
