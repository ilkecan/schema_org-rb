module SchemaOrg
  # https://schema.org/AllocateAction
  #
  # The act of organizing tasks/objects/events by associating resources to it.
  class AllocateAction < Base
    include Mixins::AllocateAction
    SCHEMA_TYPES = [self, SchemaOrg::OrganizeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
