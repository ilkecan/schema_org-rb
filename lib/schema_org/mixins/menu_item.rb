# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MenuItem
      include Intangible

      def self.schema_property_definitions
        {
          menu_add_on: {
            schema_name: "menuAddOn",
            schema_url: "https://schema.org/menuAddOn",
            comment_lines: ["Additional menu item(s) such as a side dish of salad or side order of fries that can be added to this menu item. Additionally it can be a menu section containing allowed add-on menu items for this menu item."].freeze,
            ranges: ["MenuItem", "MenuSection"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          offers: {
            schema_name: "offers",
            schema_url: "https://schema.org/offers",
            comment_lines: ["An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer."].freeze,
            ranges: ["Demand", "Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "itemOffered",
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

      # Additional menu item(s) such as a side dish of salad or side order of fries that can be added to this menu item. Additionally it can be a menu section containing allowed add-on menu items for this menu item.
      def menu_add_on
        read_property(:menu_add_on)
      end

      # Additional menu item(s) such as a side dish of salad or side order of fries that can be added to this menu item. Additionally it can be a menu section containing allowed add-on menu items for this menu item.
      def menu_add_on=(value)
        write_property(:menu_add_on, value)
      end

      # Nutrition information about the recipe or menu item.
      def nutrition
        read_property(:nutrition)
      end

      # Nutrition information about the recipe or menu item.
      def nutrition=(value)
        write_property(:nutrition, value)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers
        read_property(:offers)
      end

      # An offer to provide this item&#x2014;for example, an offer to sell a product, rent the DVD of a movie, perform a service, or give away tickets to an event. Use [[businessFunction]] to indicate the kind of transaction offered, i.e. sell, lease, etc. This property can also be used to describe a [[Demand]]. While this property is listed as expected on a number of common types, it can be used in others. In that case, using a second type, such as Product or a subtype of Product, can clarify the nature of the offer.
      # Inverse-property: `itemOffered`.
      def offers=(value)
        write_property(:offers, value)
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
