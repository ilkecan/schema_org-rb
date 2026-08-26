module SchemaOrg
  module Mixins
    module FoodEstablishment
      include LocalBusiness

      def self.schema_property_definitions
        {
          :accepts_reservations => {
            schema_name: "acceptsReservations",
            ranges: ["Boolean", "Text", "URL"],
          }.freeze,
          :has_menu => {
            schema_name: "hasMenu",
            ranges: ["Menu", "Text", "URL"],
          }.freeze,
          :menu => {
            schema_name: "menu",
            ranges: ["Menu", "Text", "URL"],
          }.freeze,
          :serves_cuisine => {
            schema_name: "servesCuisine",
            ranges: ["Text"],
          }.freeze,
          :star_rating => {
            schema_name: "starRating",
            ranges: ["Rating"],
          }.freeze,
        }.freeze
      end

      def accepts_reservations
        read_property(:accepts_reservations)
      end

      def accepts_reservations=(value)
        write_property(:accepts_reservations, value)
      end

      def has_menu
        read_property(:has_menu)
      end

      def has_menu=(value)
        write_property(:has_menu, value)
      end

      def menu
        read_property(:menu)
      end

      def menu=(value)
        write_property(:menu, value)
      end

      def serves_cuisine
        read_property(:serves_cuisine)
      end

      def serves_cuisine=(value)
        write_property(:serves_cuisine, value)
      end

      def star_rating
        read_property(:star_rating)
      end

      def star_rating=(value)
        write_property(:star_rating, value)
      end

    end
  end
end
