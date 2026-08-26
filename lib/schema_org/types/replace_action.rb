module SchemaOrg
  # https://schema.org/ReplaceAction
  #
  # The act of editing a recipient by replacing an old object with a new object.
  class ReplaceAction < Base
    include Mixins::ReplaceAction
    SCHEMA_TYPES = [self, SchemaOrg::UpdateAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
