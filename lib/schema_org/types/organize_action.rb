module SchemaOrg
  # https://schema.org/OrganizeAction
  #
  # The act of manipulating/administering/supervising/controlling one or more objects.
  class OrganizeAction < Base
    include Mixins::OrganizeAction
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
