module SchemaOrg
  # https://schema.org/ReactAction
  #
  # The act of responding instinctively and emotionally to an object, expressing a sentiment.
  class ReactAction < Base
    include Mixins::ReactAction
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
