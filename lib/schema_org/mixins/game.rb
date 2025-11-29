require "active_support/concern"

module SchemaOrg
  module Mixins
    module Game
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :character_attribute # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
        option :game_item # An item is an object within the game world that can be collected by a player or, occasionally, a non-player character.
        option :game_location # Real or fictional location of the game (or part of game).
        option :number_of_players # Indicate how many people can play this game (minimum, maximum, or range).
        option :quest # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
      end
    end
  end
end
