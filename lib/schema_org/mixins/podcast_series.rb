# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PodcastSeries
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
          web_feed: {
            schema_name: "webFeed",
            schema_url: "https://schema.org/webFeed",
            comment_lines: ["The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom."].freeze,
            ranges: ["DataFeed", "URL"].freeze,
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

      # The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom.
      def web_feed
        read_property(:web_feed)
      end

      # The URL for a feed, e.g. associated with a podcast series, blog, or series of date-stamped updates. This is usually RSS or Atom.
      def web_feed=(value)
        write_property(:web_feed, value)
      end
    end
  end
end
