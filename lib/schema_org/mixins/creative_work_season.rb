module SchemaOrg
  module Mixins
    module CreativeWorkSeason
      include CreativeWork

      def self.schema_property_definitions
        {
          :actor => {
            schema_name: "actor",
            ranges: ["PerformingGroup", "Person"],
          }.freeze,
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :end_date => {
            schema_name: "endDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :episode => {
            schema_name: "episode",
            ranges: ["Episode"],
          }.freeze,
          :episodes => {
            schema_name: "episodes",
            ranges: ["Episode"],
          }.freeze,
          :number_of_episodes => {
            schema_name: "numberOfEpisodes",
            ranges: ["Integer"],
          }.freeze,
          :part_of_series => {
            schema_name: "partOfSeries",
            ranges: ["CreativeWorkSeries"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :season_number => {
            schema_name: "seasonNumber",
            ranges: ["Integer", "Text"],
          }.freeze,
          :start_date => {
            schema_name: "startDate",
            ranges: ["Date", "DateTime"],
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

      def director
        read_property(:director)
      end

      def director=(value)
        write_property(:director, value)
      end

      def end_date
        read_property(:end_date)
      end

      def end_date=(value)
        write_property(:end_date, value)
      end

      def episode
        read_property(:episode)
      end

      def episode=(value)
        write_property(:episode, value)
      end

      def episodes
        read_property(:episodes)
      end

      def episodes=(value)
        write_property(:episodes, value)
      end

      def number_of_episodes
        read_property(:number_of_episodes)
      end

      def number_of_episodes=(value)
        write_property(:number_of_episodes, value)
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

      def season_number
        read_property(:season_number)
      end

      def season_number=(value)
        write_property(:season_number, value)
      end

      def start_date
        read_property(:start_date)
      end

      def start_date=(value)
        write_property(:start_date, value)
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
