# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module CookAction
      include CreateAction

      def self.schema_property_definitions
        {
          food_establishment: {
            schema_name: "foodEstablishment",
            schema_url: "https://schema.org/foodEstablishment",
            comment_lines: ["A sub property of location. The specific food establishment where the action occurred."].freeze,
            ranges: ["FoodEstablishment", "Place"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          food_event: {
            schema_name: "foodEvent",
            schema_url: "https://schema.org/foodEvent",
            comment_lines: ["A sub property of location. The specific food event where the action occurred."].freeze,
            ranges: ["FoodEvent"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recipe: {
            schema_name: "recipe",
            schema_url: "https://schema.org/recipe",
            comment_lines: ["A sub property of instrument. The recipe/instructions used to perform the action."].freeze,
            ranges: ["Recipe"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A sub property of location. The specific food establishment where the action occurred.
      def food_establishment
        read_property(:food_establishment)
      end

      # A sub property of location. The specific food establishment where the action occurred.
      def food_establishment=(value)
        write_property(:food_establishment, value)
      end

      # A sub property of location. The specific food event where the action occurred.
      def food_event
        read_property(:food_event)
      end

      # A sub property of location. The specific food event where the action occurred.
      def food_event=(value)
        write_property(:food_event, value)
      end

      # A sub property of instrument. The recipe/instructions used to perform the action.
      def recipe
        read_property(:recipe)
      end

      # A sub property of instrument. The recipe/instructions used to perform the action.
      def recipe=(value)
        write_property(:recipe, value)
      end
    end
  end
end
