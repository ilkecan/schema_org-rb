module SchemaOrg
  # https://schema.org/FindAction
  #
  # The act of finding an object.\n\nRelated actions:\n\n* [[SearchAction]]: FindAction is generally lead by a SearchAction, but not necessarily.
  class FindAction < Base
    include Mixins::FindAction
    SCHEMA_TYPES = [self, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
