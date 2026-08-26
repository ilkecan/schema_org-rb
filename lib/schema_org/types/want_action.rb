# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/WantAction
  #
  # The act of expressing a desire about the object. An agent wants an object.
  class WantAction < Base
    include Mixins::WantAction

    SCHEMA_NAME = "WantAction"
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
