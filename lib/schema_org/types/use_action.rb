# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/UseAction
  #
  # The act of applying an object to its intended purpose.
  class UseAction < Base
    include Mixins::UseAction

    SCHEMA_NAME = "UseAction"
    SCHEMA_TYPES = [self, SchemaOrg::ConsumeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
