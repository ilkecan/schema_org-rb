module SchemaOrg
  module Mixins
    module Clip
      include CreativeWork

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
          :clip_number => {
            schema_name: "clipNumber",
            ranges: ["Integer", "Text"],
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
          :part_of_episode => {
            schema_name: "partOfEpisode",
            ranges: ["Episode"],
          }.freeze,
          :part_of_season => {
            schema_name: "partOfSeason",
            ranges: ["CreativeWorkSeason"],
          }.freeze,
          :part_of_series => {
            schema_name: "partOfSeries",
            ranges: ["CreativeWorkSeries"],
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

      def clip_number
        read_property(:clip_number)
      end

      def clip_number=(value)
        write_property(:clip_number, value)
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

      def part_of_episode
        read_property(:part_of_episode)
      end

      def part_of_episode=(value)
        write_property(:part_of_episode, value)
      end

      def part_of_season
        read_property(:part_of_season)
      end

      def part_of_season=(value)
        write_property(:part_of_season, value)
      end

      def part_of_series
        read_property(:part_of_series)
      end

      def part_of_series=(value)
        write_property(:part_of_series, value)
      end

    end
  end
end
