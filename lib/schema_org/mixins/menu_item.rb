module SchemaOrg
  module Mixins
    module MenuItem
      include Intangible

      def self.schema_property_definitions
        {
          :menu_add_on => {
            schema_name: "menuAddOn",
            ranges: ["MenuItem", "MenuSection"],
          }.freeze,
          :nutrition => {
            schema_name: "nutrition",
            ranges: ["NutritionInformation"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
          :suitable_for_diet => {
            schema_name: "suitableForDiet",
            ranges: ["RestrictedDiet"],
          }.freeze,
        }.freeze
      end

      def menu_add_on
        read_property(:menu_add_on)
      end

      def menu_add_on=(value)
        write_property(:menu_add_on, value)
      end

      def nutrition
        read_property(:nutrition)
      end

      def nutrition=(value)
        write_property(:nutrition, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
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
