# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MusicPlaylist
      include CreativeWork

      def self.schema_property_definitions
        {
          num_tracks: {
            schema_name: "numTracks",
            schema_url: "https://schema.org/numTracks",
            comment_lines: ["The number of tracks in this album or playlist."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          track: {
            schema_name: "track",
            schema_url: "https://schema.org/track",
            comment_lines: ["A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording."].freeze,
            ranges: ["ItemList", "MusicRecording"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "tracks"
          }.freeze,
          tracks: {
            schema_name: "tracks",
            schema_url: "https://schema.org/tracks",
            comment_lines: ["A music recording (track)&#x2014;usually a single song."].freeze,
            ranges: ["MusicRecording"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "track",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of tracks in this album or playlist.
      def num_tracks
        read_property(:num_tracks)
      end

      # The number of tracks in this album or playlist.
      def num_tracks=(value)
        write_property(:num_tracks, value)
      end

      # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording.
      # Supersedes `tracks`.
      def track
        read_property(:track)
      end

      # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording.
      # Supersedes `tracks`.
      def track=(value)
        write_property(:track, value)
      end

      # A music recording (track)&#x2014;usually a single song.
      # Superseded by `track`.
      def tracks
        read_property(:tracks)
      end

      # A music recording (track)&#x2014;usually a single song.
      # Superseded by `track`.
      def tracks=(value)
        write_property(:tracks, value)
      end
    end
  end
end
