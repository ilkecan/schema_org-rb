module SchemaOrg
  module Mixins
    module TVSeries
      include CreativeWork
      include CreativeWorkSeries

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
          :contains_season => {
            schema_name: "containsSeason",
            ranges: ["CreativeWorkSeason"],
          }.freeze,
          :country_of_origin => {
            schema_name: "countryOfOrigin",
            ranges: ["Country"],
          }.freeze,
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :directors => {
            schema_name: "directors",
            ranges: ["Person"],
          }.freeze,
          :episode => {
            schema_name: "episode",
            ranges: ["Episode"],
          }.freeze,
          :episodes => {
            schema_name: "episodes",
            ranges: ["Episode"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :number_of_episodes => {
            schema_name: "numberOfEpisodes",
            ranges: ["Integer"],
          }.freeze,
          :number_of_seasons => {
            schema_name: "numberOfSeasons",
            ranges: ["Integer"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :season => {
            schema_name: "season",
            ranges: ["CreativeWorkSeason", "URL"],
          }.freeze,
          :seasons => {
            schema_name: "seasons",
            ranges: ["CreativeWorkSeason"],
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

      def contains_season
        read_property(:contains_season)
      end

      def contains_season=(value)
        write_property(:contains_season, value)
      end

      def country_of_origin
        read_property(:country_of_origin)
      end

      def country_of_origin=(value)
        write_property(:country_of_origin, value)
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

      def music_by
        read_property(:music_by)
      end

      def music_by=(value)
        write_property(:music_by, value)
      end

      def number_of_episodes
        read_property(:number_of_episodes)
      end

      def number_of_episodes=(value)
        write_property(:number_of_episodes, value)
      end

      def number_of_seasons
        read_property(:number_of_seasons)
      end

      def number_of_seasons=(value)
        write_property(:number_of_seasons, value)
      end

      def production_company
        read_property(:production_company)
      end

      def production_company=(value)
        write_property(:production_company, value)
      end

      def season
        read_property(:season)
      end

      def season=(value)
        write_property(:season, value)
      end

      def seasons
        read_property(:seasons)
      end

      def seasons=(value)
        write_property(:seasons, value)
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
