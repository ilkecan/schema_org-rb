# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Recipe
      include HowTo

      def self.schema_property_definitions
        {
          cook_time: {
            schema_name: "cookTime",
            schema_url: "https://schema.org/cookTime",
            comment_lines: ["The time it takes to actually cook the dish, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cooking_method: {
            schema_name: "cookingMethod",
            schema_url: "https://schema.org/cookingMethod",
            comment_lines: ["The method of cooking, such as Frying, Steaming, ..."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ingredients: {
            schema_name: "ingredients",
            schema_url: "https://schema.org/ingredients",
            comment_lines: ["A single ingredient used in the recipe, e.g. sugar, flour or garlic."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "recipeIngredient",
            supersedes: nil
          }.freeze,
          nutrition: {
            schema_name: "nutrition",
            schema_url: "https://schema.org/nutrition",
            comment_lines: ["Nutrition information about the recipe or menu item."].freeze,
            ranges: ["NutritionInformation"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipe_category: {
            schema_name: "recipeCategory",
            schema_url: "https://schema.org/recipeCategory",
            comment_lines: ["The category of the recipe—for example, appetizer, entree, etc."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipe_cuisine: {
            schema_name: "recipeCuisine",
            schema_url: "https://schema.org/recipeCuisine",
            comment_lines: ["The cuisine of the recipe (for example, French or Ethiopian)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipe_ingredient: {
            schema_name: "recipeIngredient",
            schema_url: "https://schema.org/recipeIngredient",
            comment_lines: ["An ingredient or ordered list of ingredients and potentially quantities used in the recipe, e.g. 1 cup of sugar, flour or garlic.  The ingredients can be represented as free text or more structured values."].freeze,
            ranges: ["ItemList", "PropertyValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "ingredients"
          }.freeze,
          recipe_instructions: {
            schema_name: "recipeInstructions",
            schema_url: "https://schema.org/recipeInstructions",
            comment_lines: ["A step in making the recipe, in the form of a single item (document, video, etc.) or an ordered list with HowToStep and/or HowToSection items."].freeze,
            ranges: ["CreativeWork", "ItemList", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipe_yield: {
            schema_name: "recipeYield",
            schema_url: "https://schema.org/recipeYield",
            comment_lines: ["The quantity produced by the recipe (for example, number of people served, number of servings, etc)."].freeze,
            ranges: ["QuantitativeValue", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          suitable_for_diet: {
            schema_name: "suitableForDiet",
            schema_url: "https://schema.org/suitableForDiet",
            comment_lines: ["Indicates a dietary restriction or guideline for which this recipe or menu item is suitable, e.g. diabetic, halal etc."].freeze,
            ranges: ["Diet", "RestrictedDiet"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The time it takes to actually cook the dish, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def cook_time
        read_property(:cook_time)
      end

      # The time it takes to actually cook the dish, in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def cook_time=(value)
        write_property(:cook_time, value)
      end

      # The method of cooking, such as Frying, Steaming, ...
      def cooking_method
        read_property(:cooking_method)
      end

      # The method of cooking, such as Frying, Steaming, ...
      def cooking_method=(value)
        write_property(:cooking_method, value)
      end

      # A single ingredient used in the recipe, e.g. sugar, flour or garlic.
      # Superseded by `recipeIngredient`.
      def ingredients
        read_property(:ingredients)
      end

      # A single ingredient used in the recipe, e.g. sugar, flour or garlic.
      # Superseded by `recipeIngredient`.
      def ingredients=(value)
        write_property(:ingredients, value)
      end

      # Nutrition information about the recipe or menu item.
      def nutrition
        read_property(:nutrition)
      end

      # Nutrition information about the recipe or menu item.
      def nutrition=(value)
        write_property(:nutrition, value)
      end

      # The category of the recipe—for example, appetizer, entree, etc.
      def recipe_category
        read_property(:recipe_category)
      end

      # The category of the recipe—for example, appetizer, entree, etc.
      def recipe_category=(value)
        write_property(:recipe_category, value)
      end

      # The cuisine of the recipe (for example, French or Ethiopian).
      def recipe_cuisine
        read_property(:recipe_cuisine)
      end

      # The cuisine of the recipe (for example, French or Ethiopian).
      def recipe_cuisine=(value)
        write_property(:recipe_cuisine, value)
      end

      # An ingredient or ordered list of ingredients and potentially quantities used in the recipe, e.g. 1 cup of sugar, flour or garlic.  The ingredients can be represented as free text or more structured values.
      # Supersedes `ingredients`.
      def recipe_ingredient
        read_property(:recipe_ingredient)
      end

      # An ingredient or ordered list of ingredients and potentially quantities used in the recipe, e.g. 1 cup of sugar, flour or garlic.  The ingredients can be represented as free text or more structured values.
      # Supersedes `ingredients`.
      def recipe_ingredient=(value)
        write_property(:recipe_ingredient, value)
      end

      # A step in making the recipe, in the form of a single item (document, video, etc.) or an ordered list with HowToStep and/or HowToSection items.
      def recipe_instructions
        read_property(:recipe_instructions)
      end

      # A step in making the recipe, in the form of a single item (document, video, etc.) or an ordered list with HowToStep and/or HowToSection items.
      def recipe_instructions=(value)
        write_property(:recipe_instructions, value)
      end

      # The quantity produced by the recipe (for example, number of people served, number of servings, etc).
      def recipe_yield
        read_property(:recipe_yield)
      end

      # The quantity produced by the recipe (for example, number of people served, number of servings, etc).
      def recipe_yield=(value)
        write_property(:recipe_yield, value)
      end

      # Indicates a dietary restriction or guideline for which this recipe or menu item is suitable, e.g. diabetic, halal etc.
      def suitable_for_diet
        read_property(:suitable_for_diet)
      end

      # Indicates a dietary restriction or guideline for which this recipe or menu item is suitable, e.g. diabetic, halal etc.
      def suitable_for_diet=(value)
        write_property(:suitable_for_diet, value)
      end
    end
  end
end
