module SchemaOrg
  # https://schema.org/FindAction
  #
  # The act of finding an object.\n\nRelated actions:\n\n* [[SearchAction]]: FindAction is generally lead by a SearchAction, but not necessarily.
  class FindAction < Base
    include Mixins::FindAction
  end
end
