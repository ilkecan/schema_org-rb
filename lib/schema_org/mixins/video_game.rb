module SchemaOrg
  module Mixins
    module VideoGame
      include Game
      include SoftwareApplication

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
          :cheat_code => {
            schema_name: "cheatCode",
            ranges: ["CreativeWork"],
          }.freeze,
          :director => {
            schema_name: "director",
            ranges: ["Person"],
          }.freeze,
          :directors => {
            schema_name: "directors",
            ranges: ["Person"],
          }.freeze,
          :game_edition => {
            schema_name: "gameEdition",
            ranges: ["Text"],
          }.freeze,
          :game_platform => {
            schema_name: "gamePlatform",
            ranges: ["Text", "Thing", "URL"],
          }.freeze,
          :game_server => {
            schema_name: "gameServer",
            ranges: ["GameServer"],
          }.freeze,
          :game_tip => {
            schema_name: "gameTip",
            ranges: ["CreativeWork"],
          }.freeze,
          :music_by => {
            schema_name: "musicBy",
            ranges: ["MusicGroup", "Person"],
          }.freeze,
          :play_mode => {
            schema_name: "playMode",
            ranges: ["GamePlayMode"],
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

      def cheat_code
        read_property(:cheat_code)
      end

      def cheat_code=(value)
        write_property(:cheat_code, value)
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

      def game_edition
        read_property(:game_edition)
      end

      def game_edition=(value)
        write_property(:game_edition, value)
      end

      def game_platform
        read_property(:game_platform)
      end

      def game_platform=(value)
        write_property(:game_platform, value)
      end

      def game_server
        read_property(:game_server)
      end

      def game_server=(value)
        write_property(:game_server, value)
      end

      def game_tip
        read_property(:game_tip)
      end

      def game_tip=(value)
        write_property(:game_tip, value)
      end

      def music_by
        read_property(:music_by)
      end

      def music_by=(value)
        write_property(:music_by, value)
      end

      def play_mode
        read_property(:play_mode)
      end

      def play_mode=(value)
        write_property(:play_mode, value)
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
