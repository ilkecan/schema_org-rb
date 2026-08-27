# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module FoodEstablishment
      include LocalBusiness

      def self.schema_property_definitions
        {
          accepts_reservations: {
            schema_name: "acceptsReservations",
            schema_url: "https://schema.org/acceptsReservations",
            comment_lines: ["Indicates whether a FoodEstablishment accepts reservations. Values can be Boolean, an URL at which reservations can be made or (for backwards compatibility) the strings ```Yes``` or ```No```."].freeze,
            ranges: ["Boolean", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          has_menu: {
            schema_name: "hasMenu",
            schema_url: "https://schema.org/hasMenu",
            comment_lines: ["Either the actual menu as a structured representation, as text, or a URL of the menu."].freeze,
            ranges: ["Menu", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "menu"
          }.freeze,
          menu: {
            schema_name: "menu",
            schema_url: "https://schema.org/menu",
            comment_lines: ["Either the actual menu as a structured representation, as text, or a URL of the menu."].freeze,
            ranges: ["Menu", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "hasMenu",
            supersedes: nil
          }.freeze,
          serves_cuisine: {
            schema_name: "servesCuisine",
            schema_url: "https://schema.org/servesCuisine",
            comment_lines: ["The cuisine of the restaurant."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          star_rating: {
            schema_name: "starRating",
            schema_url: "https://schema.org/starRating",
            comment_lines: ["An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars)."].freeze,
            ranges: ["Rating"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Indicates whether a FoodEstablishment accepts reservations. Values can be Boolean, an URL at which reservations can be made or (for backwards compatibility) the strings ```Yes``` or ```No```.
      def accepts_reservations
        read_property(:accepts_reservations)
      end

      # Indicates whether a FoodEstablishment accepts reservations. Values can be Boolean, an URL at which reservations can be made or (for backwards compatibility) the strings ```Yes``` or ```No```.
      def accepts_reservations=(value)
        write_property(:accepts_reservations, value)
      end

      # Either the actual menu as a structured representation, as text, or a URL of the menu.
      # Supersedes `menu`.
      def has_menu
        read_property(:has_menu)
      end

      # Either the actual menu as a structured representation, as text, or a URL of the menu.
      # Supersedes `menu`.
      def has_menu=(value)
        write_property(:has_menu, value)
      end

      # Either the actual menu as a structured representation, as text, or a URL of the menu.
      # Superseded by `hasMenu`.
      def menu
        read_property(:menu)
      end

      # Either the actual menu as a structured representation, as text, or a URL of the menu.
      # Superseded by `hasMenu`.
      def menu=(value)
        write_property(:menu, value)
      end

      # The cuisine of the restaurant.
      def serves_cuisine
        read_property(:serves_cuisine)
      end

      # The cuisine of the restaurant.
      def serves_cuisine=(value)
        write_property(:serves_cuisine, value)
      end

      # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
      def star_rating
        read_property(:star_rating)
      end

      # An official rating for a lodging business or food establishment, e.g. from national associations or standards bodies. Use the author property to indicate the rating organization, e.g. as an Organization with name such as (e.g. HOTREC, DEHOGA, WHR, or Hotelstars).
      def star_rating=(value)
        write_property(:star_rating, value)
      end
    end
  end
end
