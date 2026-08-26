module SchemaOrg
  # https://schema.org/LikeAction
  #
  # The act of expressing a positive sentiment about the object. An agent likes an object (a proposition, topic or theme) with participants.
  class LikeAction < Base
    include Mixins::LikeAction
    SCHEMA_TYPES = [self, SchemaOrg::ReactAction, SchemaOrg::AssessAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
