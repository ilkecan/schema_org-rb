module SchemaOrg
  # https://schema.org/EatAction
  #
  # The act of swallowing solid objects.
  class EatAction < Base
    include Mixins::EatAction
    SCHEMA_TYPES = [self, SchemaOrg::ConsumeAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
