# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AcceptAction
  #
  # The act of committing to/adopting an object.\n\nRelated actions:\n\n* [[RejectAction]]: The antonym of AcceptAction.
  class AcceptAction < Base
    include Mixins::AcceptAction

    SCHEMA_NAME = "AcceptAction"
    SCHEMA_TYPES = [self, SchemaOrg::AllocateAction, SchemaOrg::OrganizeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
