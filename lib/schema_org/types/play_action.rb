# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/PlayAction
  #
  # The act of playing/exercising/training/performing for enjoyment, leisure, recreation, competition or exercise.\n\nRelated actions:\n\n* [[ListenAction]]: Unlike ListenAction (which is under ConsumeAction), PlayAction refers to performing for an audience or at an event, rather than consuming music.\n* [[WatchAction]]: Unlike WatchAction (which is under ConsumeAction), PlayAction refers to showing/displaying for an audience or at an event, rather than consuming visual content.
  class PlayAction < Base
    include Mixins::PlayAction

    SCHEMA_NAME = "PlayAction"
    SCHEMA_TYPES = [self, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
