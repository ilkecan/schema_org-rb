# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Game
      include CreativeWork

      def self.schema_property_definitions
        {
          character_attribute: {
            schema_name: "characterAttribute",
            schema_url: "https://schema.org/characterAttribute",
            comment_lines: ["A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage)."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          game_item: {
            schema_name: "gameItem",
            schema_url: "https://schema.org/gameItem",
            comment_lines: ["An item is an object within the game world that can be collected by a player or, occasionally, a non-player character."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          game_location: {
            schema_name: "gameLocation",
            schema_url: "https://schema.org/gameLocation",
            comment_lines: ["Real or fictional location of the game (or part of game)."].freeze,
            ranges: ["Place", "PostalAddress", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_players: {
            schema_name: "numberOfPlayers",
            schema_url: "https://schema.org/numberOfPlayers",
            comment_lines: ["Indicate how many people can play this game (minimum, maximum, or range)."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          quest: {
            schema_name: "quest",
            schema_url: "https://schema.org/quest",
            comment_lines: ["The task that a player-controlled character, or group of characters may complete in order to gain a reward."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
      def character_attribute
        read_property(:character_attribute)
      end

      # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
      def character_attribute=(value)
        write_property(:character_attribute, value)
      end

      # An item is an object within the game world that can be collected by a player or, occasionally, a non-player character.
      def game_item
        read_property(:game_item)
      end

      # An item is an object within the game world that can be collected by a player or, occasionally, a non-player character.
      def game_item=(value)
        write_property(:game_item, value)
      end

      # Real or fictional location of the game (or part of game).
      def game_location
        read_property(:game_location)
      end

      # Real or fictional location of the game (or part of game).
      def game_location=(value)
        write_property(:game_location, value)
      end

      # Indicate how many people can play this game (minimum, maximum, or range).
      def number_of_players
        read_property(:number_of_players)
      end

      # Indicate how many people can play this game (minimum, maximum, or range).
      def number_of_players=(value)
        write_property(:number_of_players, value)
      end

      # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
      def quest
        read_property(:quest)
      end

      # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
      def quest=(value)
        write_property(:quest, value)
      end
    end
  end
end
