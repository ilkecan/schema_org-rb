module SchemaOrg
  # https://schema.org/PrependAction
  #
  # The act of inserting at the beginning if an ordered collection.
  class PrependAction < Base
    include Mixins::PrependAction
  end
end
