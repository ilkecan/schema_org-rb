module SchemaOrg
  # https://schema.org/InsertAction
  #
  # The act of adding at a specific location in an ordered collection.
  class InsertAction < Base
    include Mixins::InsertAction
    SCHEMA_TYPES = [self, SchemaOrg::AddAction, SchemaOrg::UpdateAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
