require "active_support/concern"

module SchemaOrg
  module Mixins
    module Recipe
      extend ActiveSupport::Concern

      include HowTo

      included do
        option :cook_time # The time it takes to actually cook the dish, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :cooking_method # The method of cooking, such as Frying, Steaming, ...
        option :ingredients # A single ingredient used in the recipe, e.g. sugar, flour or garlic.
        option :nutrition # Nutrition information about the recipe or menu item.
        option :recipe_category # The category of the recipe—for example, appetizer, entree, etc.
        option :recipe_cuisine # The cuisine of the recipe (for example, French or Ethiopian).
        option :recipe_instructions # A step in making the recipe, in the form of a single item (document, video, etc.) or an ordered list with HowToStep and/or HowToSection items.
        option :recipe_yield # The quantity produced by the recipe (for example, number of people served, number of servings, etc).
        option :suitable_for_diet # Indicates a dietary restriction or guideline for which this recipe or menu item is suitable, e.g. diabetic, halal etc.
        option :recipe_ingredient # An ingredient or ordered list of ingredients and potentially quantities used in the recipe, e.g. 1 cup of sugar, flour or garlic.  The ingredients can be represented as free text or more structured values.
      end
    end
  end
end
