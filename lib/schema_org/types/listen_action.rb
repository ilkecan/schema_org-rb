module SchemaOrg
  # https://schema.org/ListenAction
  #
  # The act of consuming audio content.
  class ListenAction < Base
    include Mixins::ListenAction
  end
end
