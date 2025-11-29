module SchemaOrg
  # https://schema.org/NutritionInformation
  #
  # Nutritional information about the recipe.
  class NutritionInformation < Base
    include Mixins::NutritionInformation
  end
end
