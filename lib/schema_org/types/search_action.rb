# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SearchAction
  #
  # The act of searching for an object.\n\nRelated actions:\n\n* [[FindAction]]: SearchAction generally leads to a FindAction, but not necessarily.
  class SearchAction < Base
    include Mixins::SearchAction

    SCHEMA_NAME = "SearchAction"
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
