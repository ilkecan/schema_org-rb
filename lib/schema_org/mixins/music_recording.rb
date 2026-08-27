# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MusicRecording
      include CreativeWork

      def self.schema_property_definitions
        {
          by_artist: {
            schema_name: "byArtist",
            schema_url: "https://schema.org/byArtist",
            comment_lines: ["The artist that performed this album or recording."].freeze,
            ranges: ["MusicGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duration: {
            schema_name: "duration",
            schema_url: "https://schema.org/duration",
            comment_lines: ["The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_album: {
            schema_name: "inAlbum",
            schema_url: "https://schema.org/inAlbum",
            comment_lines: ["The album to which this recording belongs."].freeze,
            ranges: ["MusicAlbum"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          in_playlist: {
            schema_name: "inPlaylist",
            schema_url: "https://schema.org/inPlaylist",
            comment_lines: ["The playlist to which this recording belongs."].freeze,
            ranges: ["MusicPlaylist"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          isrc_code: {
            schema_name: "isrcCode",
            schema_url: "https://schema.org/isrcCode",
            comment_lines: ["The International Standard Recording Code for the recording."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recording_of: {
            schema_name: "recordingOf",
            schema_url: "https://schema.org/recordingOf",
            comment_lines: ["The composition this track is a recording of."].freeze,
            ranges: ["MusicComposition"].freeze,
            external_ranges: [].freeze,
            inverse_of: "recordedAs",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The artist that performed this album or recording.
      def by_artist
        read_property(:by_artist)
      end

      # The artist that performed this album or recording.
      def by_artist=(value)
        write_property(:by_artist, value)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # The album to which this recording belongs.
      def in_album
        read_property(:in_album)
      end

      # The album to which this recording belongs.
      def in_album=(value)
        write_property(:in_album, value)
      end

      # The playlist to which this recording belongs.
      def in_playlist
        read_property(:in_playlist)
      end

      # The playlist to which this recording belongs.
      def in_playlist=(value)
        write_property(:in_playlist, value)
      end

      # The International Standard Recording Code for the recording.
      def isrc_code
        read_property(:isrc_code)
      end

      # The International Standard Recording Code for the recording.
      def isrc_code=(value)
        write_property(:isrc_code, value)
      end

      # The composition this track is a recording of.
      # Inverse-property: `recordedAs`.
      def recording_of
        read_property(:recording_of)
      end

      # The composition this track is a recording of.
      # Inverse-property: `recordedAs`.
      def recording_of=(value)
        write_property(:recording_of, value)
      end
    end
  end
end
