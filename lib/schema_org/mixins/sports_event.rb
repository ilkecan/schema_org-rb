module SchemaOrg
  module Mixins
    module SportsEvent
      include Event

      def self.schema_property_definitions
        {
          :away_team => {
            schema_name: "awayTeam",
            ranges: ["Person", "SportsTeam"],
          }.freeze,
          :competitor => {
            schema_name: "competitor",
            ranges: ["Person", "SportsTeam"],
          }.freeze,
          :home_team => {
            schema_name: "homeTeam",
            ranges: ["Person", "SportsTeam"],
          }.freeze,
          :referee => {
            schema_name: "referee",
            ranges: ["Person"],
          }.freeze,
        }.freeze
      end

      def away_team
        read_property(:away_team)
      end

      def away_team=(value)
        write_property(:away_team, value)
      end

      def competitor
        read_property(:competitor)
      end

      def competitor=(value)
        write_property(:competitor, value)
      end

      def home_team
        read_property(:home_team)
      end

      def home_team=(value)
        write_property(:home_team, value)
      end

      def referee
        read_property(:referee)
      end

      def referee=(value)
        write_property(:referee, value)
      end

    end
  end
end
