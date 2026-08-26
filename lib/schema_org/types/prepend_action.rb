module SchemaOrg
  # https://schema.org/PrependAction
  #
  # The act of inserting at the beginning if an ordered collection.
  class PrependAction < Base
    include Mixins::PrependAction
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
