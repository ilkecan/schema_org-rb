module SchemaOrg
  # https://schema.org/DrawAction
  #
  # The act of producing a visual/graphical representation of an object, typically with a pen/pencil and paper as instruments.
  class DrawAction < Base
    include Mixins::DrawAction
    SCHEMA_TYPES = [self, SchemaOrg::CreateAction, SchemaOrg::Action, SchemaOrg::Thing].freeze

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
