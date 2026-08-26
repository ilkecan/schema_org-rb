module SchemaOrg
  module Mixins
    module Game
      include CreativeWork

      def self.schema_property_definitions
        {
          :character_attribute => {
            schema_name: "characterAttribute",
            ranges: ["Thing"],
          }.freeze,
          :game_item => {
            schema_name: "gameItem",
            ranges: ["Thing"],
          }.freeze,
          :game_location => {
            schema_name: "gameLocation",
            ranges: ["Place", "PostalAddress", "URL"],
          }.freeze,
          :number_of_players => {
            schema_name: "numberOfPlayers",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :quest => {
            schema_name: "quest",
            ranges: ["Thing"],
          }.freeze,
        }.freeze
      end

      def character_attribute
        read_property(:character_attribute)
      end

      def character_attribute=(value)
        write_property(:character_attribute, value)
      end

      def game_item
        read_property(:game_item)
      end

      def game_item=(value)
        write_property(:game_item, value)
      end

      def game_location
        read_property(:game_location)
      end

      def game_location=(value)
        write_property(:game_location, value)
      end

      def number_of_players
        read_property(:number_of_players)
      end

      def number_of_players=(value)
        write_property(:number_of_players, value)
      end

      def quest
        read_property(:quest)
      end

      def quest=(value)
        write_property(:quest, value)
      end

    end
  end
end
