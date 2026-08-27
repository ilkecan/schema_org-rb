# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module NutritionInformation
      include StructuredValue

      def self.schema_property_definitions
        {
          calories: {
            schema_name: "calories",
            schema_url: "https://schema.org/calories",
            comment_lines: ["The number of calories."].freeze,
            ranges: ["Energy"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          carbohydrate_content: {
            schema_name: "carbohydrateContent",
            schema_url: "https://schema.org/carbohydrateContent",
            comment_lines: ["The number of grams of carbohydrates."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          cholesterol_content: {
            schema_name: "cholesterolContent",
            schema_url: "https://schema.org/cholesterolContent",
            comment_lines: ["The number of milligrams of cholesterol."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fat_content: {
            schema_name: "fatContent",
            schema_url: "https://schema.org/fatContent",
            comment_lines: ["The number of grams of fat."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fiber_content: {
            schema_name: "fiberContent",
            schema_url: "https://schema.org/fiberContent",
            comment_lines: ["The number of grams of fiber."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          protein_content: {
            schema_name: "proteinContent",
            schema_url: "https://schema.org/proteinContent",
            comment_lines: ["The number of grams of protein."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          saturated_fat_content: {
            schema_name: "saturatedFatContent",
            schema_url: "https://schema.org/saturatedFatContent",
            comment_lines: ["The number of grams of saturated fat."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          serving_size: {
            schema_name: "servingSize",
            schema_url: "https://schema.org/servingSize",
            comment_lines: ["The serving size, in terms of the number of volume or mass."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sodium_content: {
            schema_name: "sodiumContent",
            schema_url: "https://schema.org/sodiumContent",
            comment_lines: ["The number of milligrams of sodium."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sugar_content: {
            schema_name: "sugarContent",
            schema_url: "https://schema.org/sugarContent",
            comment_lines: ["The number of grams of sugar."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          trans_fat_content: {
            schema_name: "transFatContent",
            schema_url: "https://schema.org/transFatContent",
            comment_lines: ["The number of grams of trans fat."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          unsaturated_fat_content: {
            schema_name: "unsaturatedFatContent",
            schema_url: "https://schema.org/unsaturatedFatContent",
            comment_lines: ["The number of grams of unsaturated fat."].freeze,
            ranges: ["Mass"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of calories.
      def calories
        read_property(:calories)
      end

      # The number of calories.
      def calories=(value)
        write_property(:calories, value)
      end

      # The number of grams of carbohydrates.
      def carbohydrate_content
        read_property(:carbohydrate_content)
      end

      # The number of grams of carbohydrates.
      def carbohydrate_content=(value)
        write_property(:carbohydrate_content, value)
      end

      # The number of milligrams of cholesterol.
      def cholesterol_content
        read_property(:cholesterol_content)
      end

      # The number of milligrams of cholesterol.
      def cholesterol_content=(value)
        write_property(:cholesterol_content, value)
      end

      # The number of grams of fat.
      def fat_content
        read_property(:fat_content)
      end

      # The number of grams of fat.
      def fat_content=(value)
        write_property(:fat_content, value)
      end

      # The number of grams of fiber.
      def fiber_content
        read_property(:fiber_content)
      end

      # The number of grams of fiber.
      def fiber_content=(value)
        write_property(:fiber_content, value)
      end

      # The number of grams of protein.
      def protein_content
        read_property(:protein_content)
      end

      # The number of grams of protein.
      def protein_content=(value)
        write_property(:protein_content, value)
      end

      # The number of grams of saturated fat.
      def saturated_fat_content
        read_property(:saturated_fat_content)
      end

      # The number of grams of saturated fat.
      def saturated_fat_content=(value)
        write_property(:saturated_fat_content, value)
      end

      # The serving size, in terms of the number of volume or mass.
      def serving_size
        read_property(:serving_size)
      end

      # The serving size, in terms of the number of volume or mass.
      def serving_size=(value)
        write_property(:serving_size, value)
      end

      # The number of milligrams of sodium.
      def sodium_content
        read_property(:sodium_content)
      end

      # The number of milligrams of sodium.
      def sodium_content=(value)
        write_property(:sodium_content, value)
      end

      # The number of grams of sugar.
      def sugar_content
        read_property(:sugar_content)
      end

      # The number of grams of sugar.
      def sugar_content=(value)
        write_property(:sugar_content, value)
      end

      # The number of grams of trans fat.
      def trans_fat_content
        read_property(:trans_fat_content)
      end

      # The number of grams of trans fat.
      def trans_fat_content=(value)
        write_property(:trans_fat_content, value)
      end

      # The number of grams of unsaturated fat.
      def unsaturated_fat_content
        read_property(:unsaturated_fat_content)
      end

      # The number of grams of unsaturated fat.
      def unsaturated_fat_content=(value)
        write_property(:unsaturated_fat_content, value)
      end
    end
  end
end
