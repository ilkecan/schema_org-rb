# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MovieSeries
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
            supersedes: ["actors"].freeze
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
          director: {
            schema_name: "director",
            schema_url: "https://schema.org/director",
            comment_lines: ["A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["directors"].freeze
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

      # The composer of the soundtrack.
      def music_by
        read_property(:music_by)
      end

      # The composer of the soundtrack.
      def music_by=(value)
        write_property(:music_by, value)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company
        read_property(:production_company)
      end

      # The production company or studio responsible for the item, e.g. series, video game, episode etc.
      def production_company=(value)
        write_property(:production_company, value)
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
