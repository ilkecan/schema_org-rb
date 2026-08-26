# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AgreeAction
  #
  # The act of expressing a consistency of opinion with the object. An agent agrees to/about an object (a proposition, topic or theme) with participants.
  class AgreeAction < Base
    include Mixins::AgreeAction

    SCHEMA_NAME = "AgreeAction"
    SCHEMA_TYPES = [self, SchemaOrg::ReactAction, SchemaOrg::AssessAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
