# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module CreativeWorkSeason
      include CreativeWork

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
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
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
          part_of_series: {
            schema_name: "partOfSeries",
            schema_url: "https://schema.org/partOfSeries",
            comment_lines: ["The series to which this episode or season belongs."].freeze,
            ranges: ["CreativeWorkSeries"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "partOfTVSeries"
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
          season_number: {
            schema_name: "seasonNumber",
            schema_url: "https://schema.org/seasonNumber",
            comment_lines: ["Position of the season within an ordered group of seasons."].freeze,
            ranges: ["Integer", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
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

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
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

      # The number of episodes in this season or series.
      def number_of_episodes
        read_property(:number_of_episodes)
      end

      # The number of episodes in this season or series.
      def number_of_episodes=(value)
        write_property(:number_of_episodes, value)
      end

      # The series to which this episode or season belongs.
      # Supersedes `partOfTVSeries`.
      def part_of_series
        read_property(:part_of_series)
      end

      # The series to which this episode or season belongs.
      # Supersedes `partOfTVSeries`.
      def part_of_series=(value)
        write_property(:part_of_series, value)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company
        read_property(:production_company)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company=(value)
        write_property(:production_company, value)
      end

      # Position of the season within an ordered group of seasons.
      def season_number
        read_property(:season_number)
      end

      # Position of the season within an ordered group of seasons.
      def season_number=(value)
        write_property(:season_number, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
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
