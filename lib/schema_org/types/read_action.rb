module SchemaOrg
  # https://schema.org/ReadAction
  #
  # The act of consuming written content.
  class ReadAction < Base
    include Mixins::ReadAction
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
