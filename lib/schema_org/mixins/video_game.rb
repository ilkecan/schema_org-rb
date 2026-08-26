# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module VideoGame
      include Game
      include SoftwareApplication

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
          game_edition: {
            schema_name: "gameEdition",
            schema_url: "https://schema.org/gameEdition",
            comment_lines: ["The edition of a video game."].freeze,
            ranges: ["Text"].freeze,
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
          game_server: {
            schema_name: "gameServer",
            schema_url: "https://schema.org/gameServer",
            comment_lines: ["The server on which  it is possible to play the game."].freeze,
            ranges: ["GameServer"].freeze,
            external_ranges: [].freeze,
            inverse_of: "game",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          game_tip: {
            schema_name: "gameTip",
            schema_url: "https://schema.org/gameTip",
            comment_lines: ["Links to tips, tactics, etc."].freeze,
            ranges: ["CreativeWork"].freeze,
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

      # Cheat codes to the game.
      def cheat_code
        read_property(:cheat_code)
      end

      # Cheat codes to the game.
      def cheat_code=(value)
        write_property(:cheat_code, value)
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

      # The edition of a video game.
      def game_edition
        read_property(:game_edition)
      end

      # The edition of a video game.
      def game_edition=(value)
        write_property(:game_edition, value)
      end

      # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
      def game_platform
        read_property(:game_platform)
      end

      # The electronic systems used to play <a href="http://en.wikipedia.org/wiki/Category:Video_game_platforms">video games</a>.
      def game_platform=(value)
        write_property(:game_platform, value)
      end

      # The server on which  it is possible to play the game.
      # Inverse-property: `game`.
      def game_server
        read_property(:game_server)
      end

      # The server on which  it is possible to play the game.
      # Inverse-property: `game`.
      def game_server=(value)
        write_property(:game_server, value)
      end

      # Links to tips, tactics, etc.
      def game_tip
        read_property(:game_tip)
      end

      # Links to tips, tactics, etc.
      def game_tip=(value)
        write_property(:game_tip, value)
      end

      # The composer of the soundtrack.
      def music_by
        read_property(:music_by)
      end

      # The composer of the soundtrack.
      def music_by=(value)
        write_property(:music_by, value)
      end

      # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
      def play_mode
        read_property(:play_mode)
      end

      # Indicates whether this game is multi-player, co-op or single-player.  The game can be marked as multi-player, co-op and single-player at the same time.
      def play_mode=(value)
        write_property(:play_mode, value)
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
