module SchemaOrg
  module Mixins
    module MusicAlbum
      include MusicPlaylist

      def self.schema_property_definitions
        {
          :album_production_type => {
            schema_name: "albumProductionType",
            ranges: ["MusicAlbumProductionType"],
          }.freeze,
          :album_release => {
            schema_name: "albumRelease",
            ranges: ["MusicRelease"],
          }.freeze,
          :album_release_type => {
            schema_name: "albumReleaseType",
            ranges: ["MusicAlbumReleaseType"],
          }.freeze,
          :by_artist => {
            schema_name: "byArtist",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
        }.freeze
      end

      def album_production_type
        read_property(:album_production_type)
      end

      def album_production_type=(value)
        write_property(:album_production_type, value)
      end

      def album_release
        read_property(:album_release)
      end

      def album_release=(value)
        write_property(:album_release, value)
      end

      def album_release_type
        read_property(:album_release_type)
      end

      def album_release_type=(value)
        write_property(:album_release_type, value)
      end

      def by_artist
        read_property(:by_artist)
      end

      def by_artist=(value)
        write_property(:by_artist, value)
      end

    end
  end
end
