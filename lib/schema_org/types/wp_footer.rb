module SchemaOrg
  # https://schema.org/WPFooter
  #
  # The footer section of the page.
  class WPFooter < Base
    include Mixins::WPFooter
    SCHEMA_TYPES = [self, SchemaOrg::WebPageElement, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
