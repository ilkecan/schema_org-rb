# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module GameServer
      include Intangible

      def self.schema_property_definitions
        {
          game: {
            schema_name: "game",
            schema_url: "https://schema.org/game",
            comment_lines: ["Video game which is played on this server."].freeze,
            ranges: ["VideoGame"].freeze,
            external_ranges: [].freeze,
            inverse_of: "gameServer",
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          players_online: {
            schema_name: "playersOnline",
            schema_url: "https://schema.org/playersOnline",
            comment_lines: ["Number of players on the server."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          server_status: {
            schema_name: "serverStatus",
            schema_url: "https://schema.org/serverStatus",
            comment_lines: ["Status of a game server."].freeze,
            ranges: ["GameServerStatus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Video game which is played on this server.
      # Inverse-property: `gameServer`.
      def game
        read_property(:game)
      end

      # Video game which is played on this server.
      # Inverse-property: `gameServer`.
      def game=(value)
        write_property(:game, value)
      end

      # Number of players on the server.
      def players_online
        read_property(:players_online)
      end

      # Number of players on the server.
      def players_online=(value)
        write_property(:players_online, value)
      end

      # Status of a game server.
      def server_status
        read_property(:server_status)
      end

      # Status of a game server.
      def server_status=(value)
        write_property(:server_status, value)
      end
    end
  end
end
