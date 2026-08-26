module SchemaOrg
  module Mixins
    module Recipe
      include HowTo

      def self.schema_property_definitions
        {
          :cook_time => {
            schema_name: "cookTime",
            ranges: ["Duration"],
          }.freeze,
          :cooking_method => {
            schema_name: "cookingMethod",
            ranges: ["Text"],
          }.freeze,
          :ingredients => {
            schema_name: "ingredients",
            ranges: ["Text"],
          }.freeze,
          :nutrition => {
            schema_name: "nutrition",
            ranges: ["NutritionInformation"],
          }.freeze,
          :recipe_category => {
            schema_name: "recipeCategory",
            ranges: ["Text"],
          }.freeze,
          :recipe_cuisine => {
            schema_name: "recipeCuisine",
            ranges: ["Text"],
          }.freeze,
          :recipe_ingredient => {
            schema_name: "recipeIngredient",
            ranges: ["ItemList", "PropertyValue", "Text"],
          }.freeze,
          :recipe_instructions => {
            schema_name: "recipeInstructions",
            ranges: ["CreativeWork", "ItemList", "Text"],
          }.freeze,
          :recipe_yield => {
            schema_name: "recipeYield",
            ranges: ["QuantitativeValue", "Text"],
          }.freeze,
          :suitable_for_diet => {
            schema_name: "suitableForDiet",
            ranges: ["RestrictedDiet"],
          }.freeze,
        }.freeze
      end

      def cook_time
        read_property(:cook_time)
      end

      def cook_time=(value)
        write_property(:cook_time, value)
      end

      def cooking_method
        read_property(:cooking_method)
      end

      def cooking_method=(value)
        write_property(:cooking_method, value)
      end

      def ingredients
        read_property(:ingredients)
      end

      def ingredients=(value)
        write_property(:ingredients, value)
      end

      def nutrition
        read_property(:nutrition)
      end

      def nutrition=(value)
        write_property(:nutrition, value)
      end

      def recipe_category
        read_property(:recipe_category)
      end

      def recipe_category=(value)
        write_property(:recipe_category, value)
      end

      def recipe_cuisine
        read_property(:recipe_cuisine)
      end

      def recipe_cuisine=(value)
        write_property(:recipe_cuisine, value)
      end

      def recipe_ingredient
        read_property(:recipe_ingredient)
      end

      def recipe_ingredient=(value)
        write_property(:recipe_ingredient, value)
      end

      def recipe_instructions
        read_property(:recipe_instructions)
      end

      def recipe_instructions=(value)
        write_property(:recipe_instructions, value)
      end

      def recipe_yield
        read_property(:recipe_yield)
      end

      def recipe_yield=(value)
        write_property(:recipe_yield, value)
      end

      def suitable_for_diet
        read_property(:suitable_for_diet)
      end

      def suitable_for_diet=(value)
        write_property(:suitable_for_diet, value)
      end

    end
  end
end
