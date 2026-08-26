module SchemaOrg
  # https://schema.org/ChooseAction
  #
  # The act of expressing a preference from a set of options or a large or unbounded set of choices/options.
  class ChooseAction < Base
    include Mixins::ChooseAction
    SCHEMA_TYPES = [self, SchemaOrg::AssessAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
