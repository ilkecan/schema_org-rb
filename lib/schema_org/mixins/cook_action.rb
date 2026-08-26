module SchemaOrg
  module Mixins
    module CookAction
      include CreateAction

      def self.schema_property_definitions
        {
          :food_establishment => {
            schema_name: "foodEstablishment",
            ranges: ["FoodEstablishment", "Place"],
          }.freeze,
          :food_event => {
            schema_name: "foodEvent",
            ranges: ["FoodEvent"],
          }.freeze,
          :recipe => {
            schema_name: "recipe",
            ranges: ["Recipe"],
          }.freeze,
        }.freeze
      end

      def food_establishment
        read_property(:food_establishment)
      end

      def food_establishment=(value)
        write_property(:food_establishment, value)
      end

      def food_event
        read_property(:food_event)
      end

      def food_event=(value)
        write_property(:food_event, value)
      end

      def recipe
        read_property(:recipe)
      end

      def recipe=(value)
        write_property(:recipe, value)
      end

    end
  end
end
