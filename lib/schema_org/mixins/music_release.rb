module SchemaOrg
  module Mixins
    module MusicRelease
      include MusicPlaylist

      def self.schema_property_definitions
        {
          :catalog_number => {
            schema_name: "catalogNumber",
            ranges: ["Text"],
          }.freeze,
          :credited_to => {
            schema_name: "creditedTo",
            ranges: ["Organization", "Person"],
          }.freeze,
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :music_release_format => {
            schema_name: "musicReleaseFormat",
            ranges: ["MusicReleaseFormatType"],
          }.freeze,
          :record_label => {
            schema_name: "recordLabel",
            ranges: ["Organization"],
          }.freeze,
          :release_of => {
            schema_name: "releaseOf",
            ranges: ["MusicAlbum"],
          }.freeze,
        }.freeze
      end

      def catalog_number
        read_property(:catalog_number)
      end

      def catalog_number=(value)
        write_property(:catalog_number, value)
      end

      def credited_to
        read_property(:credited_to)
      end

      def credited_to=(value)
        write_property(:credited_to, value)
      end

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def music_release_format
        read_property(:music_release_format)
      end

      def music_release_format=(value)
        write_property(:music_release_format, value)
      end

      def record_label
        read_property(:record_label)
      end

      def record_label=(value)
        write_property(:record_label, value)
      end

      def release_of
        read_property(:release_of)
      end

      def release_of=(value)
        write_property(:release_of, value)
      end

    end
  end
end
