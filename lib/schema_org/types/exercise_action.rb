module SchemaOrg
  # https://schema.org/ExerciseAction
  #
  # The act of participating in exertive activity for the purposes of improving health and fitness.
  class ExerciseAction < Base
    include Mixins::ExerciseAction
    SCHEMA_TYPES = [self, SchemaOrg::PlayAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
