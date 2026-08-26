module SchemaOrg
  module Mixins
    module MusicRecording
      include CreativeWork

      def self.schema_property_definitions
        {
          :by_artist => {
            schema_name: "byArtist",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :in_album => {
            schema_name: "inAlbum",
            ranges: ["MusicAlbum"],
          }.freeze,
          :in_playlist => {
            schema_name: "inPlaylist",
            ranges: ["MusicPlaylist"],
          }.freeze,
          :isrc_code => {
            schema_name: "isrcCode",
            ranges: ["Text"],
          }.freeze,
          :recording_of => {
            schema_name: "recordingOf",
            ranges: ["MusicComposition"],
          }.freeze,
        }.freeze
      end

      def by_artist
        read_property(:by_artist)
      end

      def by_artist=(value)
        write_property(:by_artist, value)
      end

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def in_album
        read_property(:in_album)
      end

      def in_album=(value)
        write_property(:in_album, value)
      end

      def in_playlist
        read_property(:in_playlist)
      end

      def in_playlist=(value)
        write_property(:in_playlist, value)
      end

      def isrc_code
        read_property(:isrc_code)
      end

      def isrc_code=(value)
        write_property(:isrc_code, value)
      end

      def recording_of
        read_property(:recording_of)
      end

      def recording_of=(value)
        write_property(:recording_of, value)
      end

    end
  end
end
