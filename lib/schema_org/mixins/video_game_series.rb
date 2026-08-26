module SchemaOrg
  module Mixins
    module VideoGameSeries
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
          :character_attribute => {
            schema_name: "characterAttribute",
            ranges: ["Thing"],
          }.freeze,
          :cheat_code => {
            schema_name: "cheatCode",
            ranges: ["CreativeWork"],
          }.freeze,
          :contains_season => {
            schema_name: "containsSeason",
            ranges: ["CreativeWorkSeason"],
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
          :game_item => {
            schema_name: "gameItem",
            ranges: ["Thing"],
          }.freeze,
          :game_location => {
            schema_name: "gameLocation",
            ranges: ["Place", "PostalAddress", "URL"],
          }.freeze,
          :game_platform => {
            schema_name: "gamePlatform",
            ranges: ["Text", "Thing", "URL"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :number_of_episodes => {
            schema_name: "numberOfEpisodes",
            ranges: ["Integer"],
          }.freeze,
          :number_of_players => {
            schema_name: "numberOfPlayers",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :number_of_seasons => {
            schema_name: "numberOfSeasons",
            ranges: ["Integer"],
          }.freeze,
          :play_mode => {
            schema_name: "playMode",
            ranges: ["GamePlayMode"],
          }.freeze,
          :production_company => {
            schema_name: "productionCompany",
            ranges: ["Organization"],
          }.freeze,
          :quest => {
            schema_name: "quest",
            ranges: ["Thing"],
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

      def character_attribute
        read_property(:character_attribute)
      end

      def character_attribute=(value)
        write_property(:character_attribute, value)
      end

      def cheat_code
        read_property(:cheat_code)
      end

      def cheat_code=(value)
        write_property(:cheat_code, value)
      end

      def contains_season
        read_property(:contains_season)
      end

      def contains_season=(value)
        write_property(:contains_season, value)
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

      def game_item
        read_property(:game_item)
      end

      def game_item=(value)
        write_property(:game_item, value)
      end

      def game_location
        read_property(:game_location)
      end

      def game_location=(value)
        write_property(:game_location, value)
      end

      def game_platform
        read_property(:game_platform)
      end

      def game_platform=(value)
        write_property(:game_platform, value)
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

      def number_of_players
        read_property(:number_of_players)
      end

      def number_of_players=(value)
        write_property(:number_of_players, value)
      end

      def number_of_seasons
        read_property(:number_of_seasons)
      end

      def number_of_seasons=(value)
        write_property(:number_of_seasons, value)
      end

      def play_mode
        read_property(:play_mode)
      end

      def play_mode=(value)
        write_property(:play_mode, value)
      end

      def production_company
        read_property(:production_company)
      end

      def production_company=(value)
        write_property(:production_company, value)
      end

      def quest
        read_property(:quest)
      end

      def quest=(value)
        write_property(:quest, value)
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
