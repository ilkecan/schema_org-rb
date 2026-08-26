module SchemaOrg
  module Mixins
    module VideoObject
      include MediaObject

      def self.schema_property_definitions
        {
          :actor => {
            schema_name: "actor",
            ranges: ["PerformingGroup", "Person"],
          }.freeze,
          :actors => {
            schema_name: "actors",
            ranges: ["Person"],
          }.freeze,
          :caption => {
            schema_name: "caption",
            ranges: ["MediaObject", "Text"],
          }.freeze,
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :directors => {
            schema_name: "directors",
            ranges: ["Person"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :transcript => {
            schema_name: "transcript",
            ranges: ["Text"],
          }.freeze,
          :video_frame_size => {
            schema_name: "videoFrameSize",
            ranges: ["Text"],
          }.freeze,
          :video_quality => {
            schema_name: "videoQuality",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def actor
        read_property(:actor)
      end

      def actor=(value)
        write_property(:actor, value)
      end

      def actors
        read_property(:actors)
      end

      def actors=(value)
        write_property(:actors, value)
      end

      def caption
        read_property(:caption)
      end

      def caption=(value)
        write_property(:caption, value)
      end

      def director
        read_property(:director)
      end

      def director=(value)
        write_property(:director, value)
      end

      def directors
        read_property(:directors)
      end

      def directors=(value)
        write_property(:directors, value)
      end

      def music_by
        read_property(:music_by)
      end

      def music_by=(value)
        write_property(:music_by, value)
      end

      def transcript
        read_property(:transcript)
      end

      def transcript=(value)
        write_property(:transcript, value)
      end

      def video_frame_size
        read_property(:video_frame_size)
      end

      def video_frame_size=(value)
        write_property(:video_frame_size, value)
      end

      def video_quality
        read_property(:video_quality)
      end

      def video_quality=(value)
        write_property(:video_quality, value)
      end

    end
  end
end
