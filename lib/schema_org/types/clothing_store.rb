module SchemaOrg
  # https://schema.org/ClothingStore
  #
  # A clothing store.
  class ClothingStore < Base
    include Mixins::ClothingStore
  end
end
