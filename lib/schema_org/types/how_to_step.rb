module SchemaOrg
  # https://schema.org/HowToStep
  #
  # A step in the instructions for how to achieve a result. It is an ordered list with HowToDirection and/or HowToTip items.
  class HowToStep < Base
    include Mixins::HowToStep
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::ItemList, SchemaOrg::ListItem, SchemaOrg::Thing, SchemaOrg::Intangible].freeze

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
