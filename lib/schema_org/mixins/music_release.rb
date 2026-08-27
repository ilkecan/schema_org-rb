# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MusicRelease
      include MusicPlaylist

      def self.schema_property_definitions
        {
          catalog_number: {
            schema_name: "catalogNumber",
            schema_url: "https://schema.org/catalogNumber",
            comment_lines: ["The catalog number for the release."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          credited_to: {
            schema_name: "creditedTo",
            schema_url: "https://schema.org/creditedTo",
            comment_lines: ["The group the release is credited to if different than the byArtist. For example, Red and Blue is credited to \"Stefani Germanotta Band\", but by Lady Gaga."].freeze,
            ranges: ["Organization", "Person"].freeze,
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
          music_release_format: {
            schema_name: "musicReleaseFormat",
            schema_url: "https://schema.org/musicReleaseFormat",
            comment_lines: ["Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.)."].freeze,
            ranges: ["MusicReleaseFormatType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          record_label: {
            schema_name: "recordLabel",
            schema_url: "https://schema.org/recordLabel",
            comment_lines: ["The label that issued the release."].freeze,
            ranges: ["Organization"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          release_of: {
            schema_name: "releaseOf",
            schema_url: "https://schema.org/releaseOf",
            comment_lines: ["The album this is a release of."].freeze,
            ranges: ["MusicAlbum"].freeze,
            external_ranges: [].freeze,
            inverse_of: "albumRelease",
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The catalog number for the release.
      def catalog_number
        read_property(:catalog_number)
      end

      # The catalog number for the release.
      def catalog_number=(value)
        write_property(:catalog_number, value)
      end

      # The group the release is credited to if different than the byArtist. For example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady Gaga.
      def credited_to
        read_property(:credited_to)
      end

      # The group the release is credited to if different than the byArtist. For example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady Gaga.
      def credited_to=(value)
        write_property(:credited_to, value)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
      def music_release_format
        read_property(:music_release_format)
      end

      # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
      def music_release_format=(value)
        write_property(:music_release_format, value)
      end

      # The label that issued the release.
      def record_label
        read_property(:record_label)
      end

      # The label that issued the release.
      def record_label=(value)
        write_property(:record_label, value)
      end

      # The album this is a release of.
      # Inverse-property: `albumRelease`.
      def release_of
        read_property(:release_of)
      end

      # The album this is a release of.
      # Inverse-property: `albumRelease`.
      def release_of=(value)
        write_property(:release_of, value)
      end
    end
  end
end
