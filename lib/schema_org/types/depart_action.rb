module SchemaOrg
  # https://schema.org/DepartAction
  #
  # The act of  departing from a place. An agent departs from a fromLocation for a destination, optionally with participants.
  class DepartAction < Base
    include Mixins::DepartAction
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
