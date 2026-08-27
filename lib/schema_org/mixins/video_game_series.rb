# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module VideoGameSeries
      include CreativeWorkSeries

      def self.schema_property_definitions
        {
          actor: {
            schema_name: "actor",
            schema_url: "https://schema.org/actor",
            comment_lines: ["An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["PerformingGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "actors"
          }.freeze,
          actors: {
            schema_name: "actors",
            schema_url: "https://schema.org/actors",
            comment_lines: ["An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "actor",
            supersedes: nil
          }.freeze,
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
          cheat_code: {
            schema_name: "cheatCode",
            schema_url: "https://schema.org/cheatCode",
            comment_lines: ["Cheat codes to the game."].freeze,
            ranges: ["CreativeWork"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contains_season: {
            schema_name: "containsSeason",
            schema_url: "https://schema.org/containsSeason",
            comment_lines: ["A season that is part of the media series."].freeze,
            ranges: ["CreativeWorkSeason"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "season"
          }.freeze,
          director: {
            schema_name: "director",
            schema_url: "https://schema.org/director",
            comment_lines: ["A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "directors"
          }.freeze,
          directors: {
            schema_name: "directors",
            schema_url: "https://schema.org/directors",
            comment_lines: ["A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "director",
            supersedes: nil
          }.freeze,
          episode: {
            schema_name: "episode",
            schema_url: "https://schema.org/episode",
            comment_lines: ["An episode of a TV, radio or game media within a series or season."].freeze,
            ranges: ["Episode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "episodes"
          }.freeze,
          episodes: {
            schema_name: "episodes",
            schema_url: "https://schema.org/episodes",
            comment_lines: ["An episode of a TV/radio series or season."].freeze,
            ranges: ["Episode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "episode",
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
          game_platform: {
            schema_name: "gamePlatform",
            schema_url: "https://schema.org/gamePlatform",
            comment_lines: ["The electronic systems used to play <a href=\"http://en.wikipedia.org/wiki/Category:Video_game_platforms\">video games</a>."].freeze,
            ranges: ["Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          music_by: {
            schema_name: "musicBy",
            schema_url: "https://schema.org/musicBy",
            comment_lines: ["The composer of the soundtrack."].freeze,
            ranges: ["MusicGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_episodes: {
            schema_name: "numberOfEpisodes",
            schema_url: "https://schema.org/numberOfEpisodes",
            comment_lines: ["The number of episodes in this season or series."].freeze,
            ranges: ["Integer"].freeze,
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
          number_of_seasons: {
            schema_name: "numberOfSeasons",
            schema_url: "https://schema.org/numberOfSeasons",
            comment_lines: ["The number of seasons in this series."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          play_mode: {
            schema_name: "playMode",
            schema_url: "https://schema.org/playMode",
            comment_lines: ["Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time."].freeze,
            ranges: ["GamePlayMode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          production_company: {
            schema_name: "productionCompany",
            schema_url: "https://schema.org/productionCompany",
            comment_lines: ["The production company or studio responsible for the item, e.g. series, video game, episode etc."].freeze,
            ranges: ["Organization"].freeze,
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
          }.freeze,
          season: {
            schema_name: "season",
            schema_url: "https://schema.org/season",
            comment_lines: ["A season in a media series."].freeze,
            ranges: ["CreativeWorkSeason", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "containsSeason",
            supersedes: "seasons"
          }.freeze,
          seasons: {
            schema_name: "seasons",
            schema_url: "https://schema.org/seasons",
            comment_lines: ["A season in a media series."].freeze,
            ranges: ["CreativeWorkSeason"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "season",
            supersedes: nil
          }.freeze,
          trailer: {
            schema_name: "trailer",
            schema_url: "https://schema.org/trailer",
            comment_lines: ["The trailer of a movie or TV/radio series, season, episode, etc."].freeze,
            ranges: ["VideoObject"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor
        read_property(:actor)
      end

      # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip.
      # Supersedes `actors`.
      def actor=(value)
        write_property(:actor, value)
      end

      # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
      # Superseded by `actor`.
      def actors
        read_property(:actors)
      end

      # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip.
      # Superseded by `actor`.
      def actors=(value)
        write_property(:actors, value)
      end

      # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
      def character_attribute
        read_property(:character_attribute)
      end

      # A piece of data that represents a particular aspect of a fictional character (skill, power, character points, advantage, disadvantage).
      def character_attribute=(value)
        write_property(:character_attribute, value)
      end

      # Cheat codes to the game.
      def cheat_code
        read_property(:cheat_code)
      end

      # Cheat codes to the game.
      def cheat_code=(value)
        write_property(:cheat_code, value)
      end

      # A season that is part of the media series.
      # Supersedes `season`.
      def contains_season
        read_property(:contains_season)
      end

      # A season that is part of the media series.
      # Supersedes `season`.
      def contains_season=(value)
        write_property(:contains_season, value)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director
        read_property(:director)
      end

      # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip.
      # Supersedes `directors`.
      def director=(value)
        write_property(:director, value)
      end

      # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
      # Superseded by `director`.
      def directors
        read_property(:directors)
      end

      # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip.
      # Superseded by `director`.
      def directors=(value)
        write_property(:directors, value)
      end

      # An episode of a TV, radio or game media within a series or season.
      # Supersedes `episodes`.
      def episode
        read_property(:episode)
      end

      # An episode of a TV, radio or game media within a series or season.
      # Supersedes `episodes`.
      def episode=(value)
        write_property(:episode, value)
      end

      # An episode of a TV/radio series or season.
      # Superseded by `episode`.
      def episodes
        read_property(:episodes)
      end

      # An episode of a TV/radio series or season.
      # Superseded by `episode`.
      def episodes=(value)
        write_property(:episodes, value)
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

      # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
      def game_platform
        read_property(:game_platform)
      end

      # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
      def game_platform=(value)
        write_property(:game_platform, value)
      end

      # The composer of the soundtrack.
      def music_by
        read_property(:music_by)
      end

      # The composer of the soundtrack.
      def music_by=(value)
        write_property(:music_by, value)
      end

      # The number of episodes in this season or series.
      def number_of_episodes
        read_property(:number_of_episodes)
      end

      # The number of episodes in this season or series.
      def number_of_episodes=(value)
        write_property(:number_of_episodes, value)
      end

      # Indicate how many people can play this game (minimum, maximum, or range).
      def number_of_players
        read_property(:number_of_players)
      end

      # Indicate how many people can play this game (minimum, maximum, or range).
      def number_of_players=(value)
        write_property(:number_of_players, value)
      end

      # The number of seasons in this series.
      def number_of_seasons
        read_property(:number_of_seasons)
      end

      # The number of seasons in this series.
      def number_of_seasons=(value)
        write_property(:number_of_seasons, value)
      end

      # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
      def play_mode
        read_property(:play_mode)
      end

      # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
      def play_mode=(value)
        write_property(:play_mode, value)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company
        read_property(:production_company)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company=(value)
        write_property(:production_company, value)
      end

      # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
      def quest
        read_property(:quest)
      end

      # The task that a player-controlled character, or group of characters may complete in order to gain a reward.
      def quest=(value)
        write_property(:quest, value)
      end

      # A season in a media series.
      # Supersedes `seasons`.
      # Superseded by `containsSeason`.
      def season
        read_property(:season)
      end

      # A season in a media series.
      # Supersedes `seasons`.
      # Superseded by `containsSeason`.
      def season=(value)
        write_property(:season, value)
      end

      # A season in a media series.
      # Superseded by `season`.
      def seasons
        read_property(:seasons)
      end

      # A season in a media series.
      # Superseded by `season`.
      def seasons=(value)
        write_property(:seasons, value)
      end

      # The trailer of a movie or TV/radio series, season, episode, etc.
      def trailer
        read_property(:trailer)
      end

      # The trailer of a movie or TV/radio series, season, episode, etc.
      def trailer=(value)
        write_property(:trailer, value)
      end
    end
  end
end
