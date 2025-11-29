module SchemaOrg
  # https://schema.org/GroceryStore
  #
  # A grocery store.
  class GroceryStore < Base
    include Mixins::GroceryStore
  end
end
