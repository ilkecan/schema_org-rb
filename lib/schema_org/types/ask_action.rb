module SchemaOrg
  # https://schema.org/AskAction
  #
  # The act of posing a question / favor to someone.\n\nRelated actions:\n\n* [[ReplyAction]]: Appears generally as a response to AskAction.
  class AskAction < Base
    include Mixins::AskAction
    SCHEMA_TYPES = [self, SchemaOrg::CommunicateAction, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
