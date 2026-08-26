module SchemaOrg
  # https://schema.org/AddAction
  #
  # The act of editing by adding an object to a collection.
  class AddAction < Base
    include Mixins::AddAction
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
