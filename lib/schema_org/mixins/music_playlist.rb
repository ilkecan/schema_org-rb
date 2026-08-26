module SchemaOrg
  module Mixins
    module MusicPlaylist
      include CreativeWork

      def self.schema_property_definitions
        {
          :num_tracks => {
            schema_name: "numTracks",
            ranges: ["Integer"],
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

      def num_tracks
        read_property(:num_tracks)
      end

      def num_tracks=(value)
        write_property(:num_tracks, value)
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
