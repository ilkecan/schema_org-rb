# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module SportsEvent
      include Event

      def self.schema_property_definitions
        {
          away_team: {
            schema_name: "awayTeam",
            schema_url: "https://schema.org/awayTeam",
            comment_lines: ["The away team in a sports event."].freeze,
            ranges: ["Person", "SportsTeam"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          competitor: {
            schema_name: "competitor",
            schema_url: "https://schema.org/competitor",
            comment_lines: ["A competitor in a sports event."].freeze,
            ranges: ["Person", "SportsTeam"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          home_team: {
            schema_name: "homeTeam",
            schema_url: "https://schema.org/homeTeam",
            comment_lines: ["The home team in a sports event."].freeze,
            ranges: ["Person", "SportsTeam"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          referee: {
            schema_name: "referee",
            schema_url: "https://schema.org/referee",
            comment_lines: ["An official who watches a game or match closely to enforce the rules and arbitrate on matters arising from the play such as referees, umpires or judges. The name of the effective function can vary according to the sport."].freeze,
            ranges: ["Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          sport: {
            schema_name: "sport",
            schema_url: "https://schema.org/sport",
            comment_lines: ["A type of sport (e.g. Baseball)."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The away team in a sports event.
      def away_team
        read_property(:away_team)
      end

      # The away team in a sports event.
      def away_team=(value)
        write_property(:away_team, value)
      end

      # A competitor in a sports event.
      def competitor
        read_property(:competitor)
      end

      # A competitor in a sports event.
      def competitor=(value)
        write_property(:competitor, value)
      end

      # The home team in a sports event.
      def home_team
        read_property(:home_team)
      end

      # The home team in a sports event.
      def home_team=(value)
        write_property(:home_team, value)
      end

      # An official who watches a game or match closely to enforce the rules and arbitrate on matters arising from the play such as referees, umpires or judges. The name of the effective function can vary according to the sport.
      def referee
        read_property(:referee)
      end

      # An official who watches a game or match closely to enforce the rules and arbitrate on matters arising from the play such as referees, umpires or judges. The name of the effective function can vary according to the sport.
      def referee=(value)
        write_property(:referee, value)
      end

      # A type of sport (e.g. Baseball).
      def sport
        read_property(:sport)
      end

      # A type of sport (e.g. Baseball).
      def sport=(value)
        write_property(:sport, value)
      end
    end
  end
end
