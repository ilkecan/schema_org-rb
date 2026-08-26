# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TakeAction
  #
  # The act of gaining ownership of an object from an origin. Reciprocal of GiveAction.\n\nRelated actions:\n\n* [[GiveAction]]: The reciprocal of TakeAction.\n* [[ReceiveAction]]: Unlike ReceiveAction, TakeAction implies that ownership has been transferred.
  class TakeAction < Base
    include Mixins::TakeAction

    SCHEMA_NAME = "TakeAction"
    SCHEMA_TYPES = [self, SchemaOrg::TransferAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
