# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/CommentAction
  #
  # The act of generating a comment about a subject.
  class CommentAction < Base
    include Mixins::CommentAction

    SCHEMA_NAME = "CommentAction"
    SCHEMA_TYPES = [self, SchemaOrg::CommunicateAction, SchemaOrg::InteractAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
