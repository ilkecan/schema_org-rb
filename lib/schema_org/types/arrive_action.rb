module SchemaOrg
  # https://schema.org/ArriveAction
  #
  # The act of arriving at a place. An agent arrives at a destination from a fromLocation, optionally with participants.
  class ArriveAction < Base
    include Mixins::ArriveAction
    SCHEMA_TYPES = [self, SchemaOrg::MoveAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
