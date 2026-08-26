module SchemaOrg
  module Mixins
    module Episode
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
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :directors => {
            schema_name: "directors",
            ranges: ["Person"],
          }.freeze,
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :episode_number => {
            schema_name: "episodeNumber",
            ranges: ["Integer", "Text"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :part_of_season => {
            schema_name: "partOfSeason",
            ranges: ["CreativeWorkSeason"],
          }.freeze,
          :part_of_series => {
            schema_name: "partOfSeries",
            ranges: ["CreativeWorkSeries"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :trailer => {
            schema_name: "trailer",
            ranges: ["VideoObject"],
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

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def episode_number
        read_property(:episode_number)
      end

      def episode_number=(value)
        write_property(:episode_number, value)
      end

      def music_by
        read_property(:music_by)
      end

      def music_by=(value)
        write_property(:music_by, value)
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

      def production_company
        read_property(:production_company)
      end

      def production_company=(value)
        write_property(:production_company, value)
      end

      def trailer
        read_property(:trailer)
      end

      def trailer=(value)
        write_property(:trailer, value)
      end

    end
  end
end
