module SchemaOrg
  # https://schema.org/Recipe
  #
  # A recipe. For dietary restrictions covered by the recipe, a few common restrictions are enumerated via [[suitableForDiet]]. The [[keywords]] property can also be used to add more detail.
  class Recipe < Base
    include Mixins::Recipe
  end
end
