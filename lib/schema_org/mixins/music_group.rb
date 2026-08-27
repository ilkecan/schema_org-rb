# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MusicGroup
      include PerformingGroup

      def self.schema_property_definitions
        {
          album: {
            schema_name: "album",
            schema_url: "https://schema.org/album",
            comment_lines: ["A music album."].freeze,
            ranges: ["MusicAlbum"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "albums"
          }.freeze,
          albums: {
            schema_name: "albums",
            schema_url: "https://schema.org/albums",
            comment_lines: ["A collection of music albums."].freeze,
            ranges: ["MusicAlbum"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "album",
            supersedes: nil
          }.freeze,
          genre: {
            schema_name: "genre",
            schema_url: "https://schema.org/genre",
            comment_lines: ["Genre of the creative work, broadcast channel or group."].freeze,
            ranges: ["DefinedTerm", "Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          music_group_member: {
            schema_name: "musicGroupMember",
            schema_url: "https://schema.org/musicGroupMember",
            comment_lines: ["A member of a music group&#x2014;for example, John, Paul, George, or Ringo."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "member",
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

      # A music album.
      # Supersedes `albums`.
      def album
        read_property(:album)
      end

      # A music album.
      # Supersedes `albums`.
      def album=(value)
        write_property(:album, value)
      end

      # A collection of music albums.
      # Superseded by `album`.
      def albums
        read_property(:albums)
      end

      # A collection of music albums.
      # Superseded by `album`.
      def albums=(value)
        write_property(:albums, value)
      end

      # Genre of the creative work, broadcast channel or group.
      def genre
        read_property(:genre)
      end

      # Genre of the creative work, broadcast channel or group.
      def genre=(value)
        write_property(:genre, value)
      end

      # A member of a music group&#x2014;for example, John, Paul, George, or Ringo.
      # Superseded by `member`.
      def music_group_member
        read_property(:music_group_member)
      end

      # A member of a music group&#x2014;for example, John, Paul, George, or Ringo.
      # Superseded by `member`.
      def music_group_member=(value)
        write_property(:music_group_member, value)
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
