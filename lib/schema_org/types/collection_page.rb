module SchemaOrg
  # https://schema.org/CollectionPage
  #
  # Web page type: Collection page.
  class CollectionPage < Base
    include Mixins::CollectionPage
  end
end
