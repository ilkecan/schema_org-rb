# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module RadioSeries
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

      # The number of seasons in this series.
      def number_of_seasons
        read_property(:number_of_seasons)
      end

      # The number of seasons in this series.
      def number_of_seasons=(value)
        write_property(:number_of_seasons, value)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company
        read_property(:production_company)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company=(value)
        write_property(:production_company, value)
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
