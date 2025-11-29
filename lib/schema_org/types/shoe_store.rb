module SchemaOrg
  # https://schema.org/ShoeStore
  #
  # A shoe store.
  class ShoeStore < Base
    include Mixins::ShoeStore
  end
end
