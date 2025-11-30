require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoGame
      extend ActiveSupport::Concern

      include Game
      include SoftwareApplication

      included do
        option :actors, optional: true # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :cheat_code, optional: true # Cheat codes to the game.
        option :directors, optional: true # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :game_edition, optional: true # The edition of a video game.
        option :game_platform, optional: true # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
        option :game_tip, optional: true # Links to tips, tactics, etc.
        option :music_by, optional: true # The composer of the soundtrack.
        option :play_mode, optional: true # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
        option :trailer, optional: true # The trailer of a movie or TV/radio series, season, episode, etc.
        option :actor, optional: true # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director, optional: true # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
        option :game_server, optional: true # The server on which  it is possible to play the game. Inverse-property: `game`.
      end
    end
  end
end
