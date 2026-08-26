module SchemaOrg
  # https://schema.org/ReviewAction
  #
  # The act of producing a balanced opinion about the object for an audience. An agent reviews an object with participants resulting in a review.
  class ReviewAction < Base
    include Mixins::ReviewAction
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
