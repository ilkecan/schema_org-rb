module SchemaOrg
  # https://schema.org/ScholarlyArticle
  #
  # A scholarly article.
  class ScholarlyArticle < Base
    include Mixins::ScholarlyArticle
  end
end
