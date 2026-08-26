module SchemaOrg
  module Mixins
    module Movie
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
          :duration => {
            schema_name: "duration",
            ranges: ["Duration"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :subtitle_language => {
            schema_name: "subtitleLanguage",
            ranges: ["Language", "Text"],
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

      def duration
        read_property(:duration)
      end

      def duration=(value)
        write_property(:duration, value)
      end

      def music_by
        read_property(:music_by)
      end

      def music_by=(value)
        write_property(:music_by, value)
      end

      def production_company
        read_property(:production_company)
      end

      def production_company=(value)
        write_property(:production_company, value)
      end

      def subtitle_language
        read_property(:subtitle_language)
      end

      def subtitle_language=(value)
        write_property(:subtitle_language, value)
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
