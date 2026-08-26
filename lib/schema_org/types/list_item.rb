module SchemaOrg
  # https://schema.org/ListItem
  #
  # An list item, e.g. a step in a checklist or how-to description.
  class ListItem < Base
    include Mixins::ListItem
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
