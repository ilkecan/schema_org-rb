module SchemaOrg
  # https://schema.org/HowToDirection
  #
  # A direction indicating a single action to do in the instructions for how to achieve a result.
  class HowToDirection < Base
    include Mixins::HowToDirection
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::ListItem, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
