# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Clip
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
          clip_number: {
            schema_name: "clipNumber",
            schema_url: "https://schema.org/clipNumber",
            comment_lines: ["Position of the clip within an ordered group of clips."].freeze,
            ranges: ["Integer", "Text"].freeze,
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
          end_offset: {
            schema_name: "endOffset",
            schema_url: "https://schema.org/endOffset",
            comment_lines: ["The end time of the clip expressed as the number of seconds from the beginning of the work."].freeze,
            ranges: ["HyperTocEntry", "Number"].freeze,
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
          part_of_episode: {
            schema_name: "partOfEpisode",
            schema_url: "https://schema.org/partOfEpisode",
            comment_lines: ["The episode to which this clip belongs."].freeze,
            ranges: ["Episode"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_season: {
            schema_name: "partOfSeason",
            schema_url: "https://schema.org/partOfSeason",
            comment_lines: ["The season to which this episode belongs."].freeze,
            ranges: ["CreativeWorkSeason"].freeze,
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
          start_offset: {
            schema_name: "startOffset",
            schema_url: "https://schema.org/startOffset",
            comment_lines: ["The start time of the clip expressed as the number of seconds from the beginning of the work."].freeze,
            ranges: ["HyperTocEntry", "Number"].freeze,
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

      # Position of the clip within an ordered group of clips.
      def clip_number
        read_property(:clip_number)
      end

      # Position of the clip within an ordered group of clips.
      def clip_number=(value)
        write_property(:clip_number, value)
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

      # The end time of the clip expressed as the number of seconds from the beginning of the work.
      def end_offset
        read_property(:end_offset)
      end

      # The end time of the clip expressed as the number of seconds from the beginning of the work.
      def end_offset=(value)
        write_property(:end_offset, value)
      end

      # The composer of the soundtrack.
      def music_by
        read_property(:music_by)
      end

      # The composer of the soundtrack.
      def music_by=(value)
        write_property(:music_by, value)
      end

      # The episode to which this clip belongs.
      def part_of_episode
        read_property(:part_of_episode)
      end

      # The episode to which this clip belongs.
      def part_of_episode=(value)
        write_property(:part_of_episode, value)
      end

      # The season to which this episode belongs.
      def part_of_season
        read_property(:part_of_season)
      end

      # The season to which this episode belongs.
      def part_of_season=(value)
        write_property(:part_of_season, value)
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

      # The start time of the clip expressed as the number of seconds from the beginning of the work.
      def start_offset
        read_property(:start_offset)
      end

      # The start time of the clip expressed as the number of seconds from the beginning of the work.
      def start_offset=(value)
        write_property(:start_offset, value)
      end
    end
  end
end
