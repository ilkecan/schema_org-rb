module SchemaOrg
  # https://schema.org/SearchResultsPage
  #
  # Web page type: Search results page.
  class SearchResultsPage < Base
    include Mixins::SearchResultsPage
  end
end
