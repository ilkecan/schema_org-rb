module SchemaOrg
  # https://schema.org/SearchResultsPage
  #
  # Web page type: Search results page.
  class SearchResultsPage < Base
    include Mixins::SearchResultsPage
    SCHEMA_TYPES = [self, SchemaOrg::WebPage, SchemaOrg::CreativeWork, SchemaOrg::Thing].freeze

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
