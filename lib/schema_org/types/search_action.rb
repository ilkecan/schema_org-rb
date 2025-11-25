module SchemaOrg
  # https://schema.org/SearchAction
  #
  # The act of searching for an object.\n\nRelated actions:\n\n* [[FindAction]]: SearchAction generally leads to a FindAction, but not necessarily.
  class SearchAction
    include Mixins::SearchAction
  end
end
