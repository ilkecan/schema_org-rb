module SchemaOrg
  # https://schema.org/MenuSection
  #
  # A sub-grouping of food or drink items in a menu. E.g. courses (such as 'Dinner', 'Breakfast', etc.), specific type of dishes (such as 'Meat', 'Vegan', 'Drinks', etc.), or some other classification made by the menu provider.
  class MenuSection
    include Mixins::MenuSection
  end
end
