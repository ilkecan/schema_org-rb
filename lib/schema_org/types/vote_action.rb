module SchemaOrg
  # https://schema.org/VoteAction
  #
  # The act of expressing a preference from a fixed/finite/structured set of choices/options.
  class VoteAction < Base
    include Mixins::VoteAction
    SCHEMA_TYPES = [self, SchemaOrg::ChooseAction, SchemaOrg::AssessAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
