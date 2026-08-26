module SchemaOrg
  module Mixins
    module MusicGroup
      include PerformingGroup

      def self.schema_property_definitions
        {
          :album => {
            schema_name: "album",
            ranges: ["MusicAlbum"],
          }.freeze,
          :albums => {
            schema_name: "albums",
            ranges: ["MusicAlbum"],
          }.freeze,
          :genre => {
            schema_name: "genre",
            ranges: ["DefinedTerm", "Text", "URL"],
          }.freeze,
          :music_group_member => {
            schema_name: "musicGroupMember",
            ranges: ["Person"],
          }.freeze,
          :track => {
            schema_name: "track",
            ranges: ["ItemList", "MusicRecording"],
          }.freeze,
          :tracks => {
            schema_name: "tracks",
            ranges: ["MusicRecording"],
          }.freeze,
        }.freeze
      end

      def album
        read_property(:album)
      end

      def album=(value)
        write_property(:album, value)
      end

      def albums
        read_property(:albums)
      end

      def albums=(value)
        write_property(:albums, value)
      end

      def genre
        read_property(:genre)
      end

      def genre=(value)
        write_property(:genre, value)
      end

      def music_group_member
        read_property(:music_group_member)
      end

      def music_group_member=(value)
        write_property(:music_group_member, value)
      end

      def track
        read_property(:track)
      end

      def track=(value)
        write_property(:track, value)
      end

      def tracks
        read_property(:tracks)
      end

      def tracks=(value)
        write_property(:tracks, value)
      end

    end
  end
end
