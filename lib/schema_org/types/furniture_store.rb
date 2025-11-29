module SchemaOrg
  # https://schema.org/FurnitureStore
  #
  # A furniture store.
  class FurnitureStore < Base
    include Mixins::FurnitureStore
  end
end
