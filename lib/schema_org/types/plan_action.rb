module SchemaOrg
  # https://schema.org/PlanAction
  #
  # The act of planning the execution of an event/task/action/reservation/plan to a future date.
  class PlanAction < Base
    include Mixins::PlanAction
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
