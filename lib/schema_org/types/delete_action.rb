module SchemaOrg
  # https://schema.org/DeleteAction
  #
  # The act of editing a recipient by removing one of its objects.
  class DeleteAction < Base
    include Mixins::DeleteAction
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
