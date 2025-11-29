require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoGameSeries
      extend ActiveSupport::Concern

      include CreativeWorkSeries

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
        option :character_attribute # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
        option :cheat_code # Cheat codes to the game.
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
        option :episodes # An episode of a TV/radio series or season.
        option :game_item # An item is an object within the game world that can be collected by a player or, occasionally, a non-player character.
        option :game_location # Real or fictional location of the game (or part of game).
        option :game_platform # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
        option :music_by # The composer of the soundtrack.
        option :number_of_episodes # The number of episodes in this season or series.
        option :number_of_players # Indicate how many people can play this game (minimum, maximum, or range).
        option :number_of_seasons # The number of seasons in this series.
        option :play_mode # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
        option :production_company # The production company or studio responsible for the item, e.g. series, video game, episode etc.
        option :quest # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
        option :seasons # A season in a media series.
        option :trailer # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
        option :contains_season # A season that is part of the media series.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
        option :episode # An episode of a TV, radio or game media within a series or season.
        option :season # A season in a media series.
      end
    end
  end
end
