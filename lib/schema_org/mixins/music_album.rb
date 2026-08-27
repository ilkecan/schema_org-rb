# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module MusicAlbum
      include MusicPlaylist

      def self.schema_property_definitions
        {
          album_production_type: {
            schema_name: "albumProductionType",
            schema_url: "https://schema.org/albumProductionType",
            comment_lines: ["Classification of the album by its type of content: soundtrack, live album, studio album, etc."].freeze,
            ranges: ["MusicAlbumProductionType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          album_release: {
            schema_name: "albumRelease",
            schema_url: "https://schema.org/albumRelease",
            comment_lines: ["A release of this album."].freeze,
            ranges: ["MusicRelease"].freeze,
            external_ranges: [].freeze,
            inverse_of: "releaseOf",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          album_release_type: {
            schema_name: "albumReleaseType",
            schema_url: "https://schema.org/albumReleaseType",
            comment_lines: ["The kind of release which this album is: single, EP or album."].freeze,
            ranges: ["MusicAlbumReleaseType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          by_artist: {
            schema_name: "byArtist",
            schema_url: "https://schema.org/byArtist",
            comment_lines: ["The artist that performed this album or recording."].freeze,
            ranges: ["MusicGroup", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Classification of the album by its type of content: soundtrack, live album, studio album, etc.
      def album_production_type
        read_property(:album_production_type)
      end

      # Classification of the album by its type of content: soundtrack, live album, studio album, etc.
      def album_production_type=(value)
        write_property(:album_production_type, value)
      end

      # A release of this album.
      # Inverse-property: `releaseOf`.
      def album_release
        read_property(:album_release)
      end

      # A release of this album.
      # Inverse-property: `releaseOf`.
      def album_release=(value)
        write_property(:album_release, value)
      end

      # The kind of release which this album is: single, EP or album.
      def album_release_type
        read_property(:album_release_type)
      end

      # The kind of release which this album is: single, EP or album.
      def album_release_type=(value)
        write_property(:album_release_type, value)
      end

      # The artist that performed this album or recording.
      def by_artist
        read_property(:by_artist)
      end

      # The artist that performed this album or recording.
      def by_artist=(value)
        write_property(:by_artist, value)
      end
    end
  end
end
