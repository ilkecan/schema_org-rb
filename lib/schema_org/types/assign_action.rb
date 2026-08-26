module SchemaOrg
  # https://schema.org/AssignAction
  #
  # The act of allocating an action/event/task to some destination (someone or something).
  class AssignAction < Base
    include Mixins::AssignAction
    SCHEMA_TYPES = [self, SchemaOrg::AllocateAction, SchemaOrg::OrganizeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
