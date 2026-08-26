# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ConfirmAction
  #
  # The act of notifying someone that a future event/action is going to happen as expected.\n\nRelated actions:\n\n* [[CancelAction]]: The antonym of ConfirmAction.
  class ConfirmAction < Base
    include Mixins::ConfirmAction

    SCHEMA_NAME = "ConfirmAction"
    SCHEMA_TYPES = [self, SchemaOrg::InformAction, SchemaOrg::CommunicateAction, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
