module SchemaOrg
  module Mixins
    module MusicComposition
      include CreativeWork

      def self.schema_property_definitions
        {
          :composer => {
            schema_name: "composer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :first_performance => {
            schema_name: "firstPerformance",
            ranges: ["Event"],
          }.freeze,
          :included_composition => {
            schema_name: "includedComposition",
            ranges: ["MusicComposition"],
          }.freeze,
          :iswc_code => {
            schema_name: "iswcCode",
            ranges: ["Text"],
          }.freeze,
          :lyricist => {
            schema_name: "lyricist",
            ranges: ["Person"],
          }.freeze,
          :lyrics => {
            schema_name: "lyrics",
            ranges: ["CreativeWork"],
          }.freeze,
          :music_arrangement => {
            schema_name: "musicArrangement",
            ranges: ["MusicComposition"],
          }.freeze,
          :music_composition_form => {
            schema_name: "musicCompositionForm",
            ranges: ["Text"],
          }.freeze,
          :musical_key => {
            schema_name: "musicalKey",
            ranges: ["Text"],
          }.freeze,
          :recorded_as => {
            schema_name: "recordedAs",
            ranges: ["MusicRecording"],
          }.freeze,
        }.freeze
      end

      def composer
        read_property(:composer)
      end

      def composer=(value)
        write_property(:composer, value)
      end

      def first_performance
        read_property(:first_performance)
      end

      def first_performance=(value)
        write_property(:first_performance, value)
      end

      def included_composition
        read_property(:included_composition)
      end

      def included_composition=(value)
        write_property(:included_composition, value)
      end

      def iswc_code
        read_property(:iswc_code)
      end

      def iswc_code=(value)
        write_property(:iswc_code, value)
      end

      def lyricist
        read_property(:lyricist)
      end

      def lyricist=(value)
        write_property(:lyricist, value)
      end

      def lyrics
        read_property(:lyrics)
      end

      def lyrics=(value)
        write_property(:lyrics, value)
      end

      def music_arrangement
        read_property(:music_arrangement)
      end

      def music_arrangement=(value)
        write_property(:music_arrangement, value)
      end

      def music_composition_form
        read_property(:music_composition_form)
      end

      def music_composition_form=(value)
        write_property(:music_composition_form, value)
      end

      def musical_key
        read_property(:musical_key)
      end

      def musical_key=(value)
        write_property(:musical_key, value)
      end

      def recorded_as
        read_property(:recorded_as)
      end

      def recorded_as=(value)
        write_property(:recorded_as, value)
      end

    end
  end
end
