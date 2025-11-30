require "active_support/concern"

module SchemaOrg
  module Mixins
    module NutritionInformation
      extend ActiveSupport::Concern

      include StructuredValue

      included do
        option :calories, optional: true # The number of calories.
        option :carbohydrate_content, optional: true # The number of grams of carbohydrates.
        option :cholesterol_content, optional: true # The number of milligrams of cholesterol.
        option :fat_content, optional: true # The number of grams of fat.
        option :fiber_content, optional: true # The number of grams of fiber.
        option :protein_content, optional: true # The number of grams of protein.
        option :saturated_fat_content, optional: true # The number of grams of saturated fat.
        option :serving_size, optional: true # The serving size, in terms of the number of volume or mass.
        option :sodium_content, optional: true # The number of milligrams of sodium.
        option :sugar_content, optional: true # The number of grams of sugar.
        option :trans_fat_content, optional: true # The number of grams of trans fat.
        option :unsaturated_fat_content, optional: true # The number of grams of unsaturated fat.
      end
    end
  end
end
