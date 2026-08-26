module SchemaOrg
  # https://schema.org/AppendAction
  #
  # The act of inserting at the end if an ordered collection.
  class AppendAction < Base
    include Mixins::AppendAction
    SCHEMA_TYPES = [self, SchemaOrg::InsertAction, SchemaOrg::AddAction, SchemaOrg::UpdateAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
