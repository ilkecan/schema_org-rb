module SchemaOrg
  # https://schema.org/CheckAction
  #
  # An agent inspects, determines, investigates, inquires, or examines an object's accuracy, quality, condition, or state.
  class CheckAction < Base
    include Mixins::CheckAction
    SCHEMA_TYPES = [self, SchemaOrg::FindAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
