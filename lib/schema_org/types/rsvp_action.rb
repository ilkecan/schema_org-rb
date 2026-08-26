module SchemaOrg
  # https://schema.org/RsvpAction
  #
  # The act of notifying an event organizer as to whether you expect to attend the event.
  class RsvpAction < Base
    include Mixins::RsvpAction
    SCHEMA_TYPES = [self, SchemaOrg::InformAction, SchemaOrg::CommunicateAction, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

    class << self
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
