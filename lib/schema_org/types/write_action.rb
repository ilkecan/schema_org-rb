module SchemaOrg
  # https://schema.org/WriteAction
  #
  # The act of authoring written creative content.
  class WriteAction < Base
    include Mixins::WriteAction
  end
end
