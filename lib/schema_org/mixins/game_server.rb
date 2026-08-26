module SchemaOrg
  module Mixins
    module GameServer
      include Intangible

      def self.schema_property_definitions
        {
          :game => {
            schema_name: "game",
            ranges: ["VideoGame"],
          }.freeze,
          :players_online => {
            schema_name: "playersOnline",
            ranges: ["Integer"],
          }.freeze,
          :server_status => {
            schema_name: "serverStatus",
            ranges: ["GameServerStatus"],
          }.freeze,
        }.freeze
      end

      def game
        read_property(:game)
      end

      def game=(value)
        write_property(:game, value)
      end

      def players_online
        read_property(:players_online)
      end

      def players_online=(value)
        write_property(:players_online, value)
      end

      def server_status
        read_property(:server_status)
      end

      def server_status=(value)
        write_property(:server_status, value)
      end

    end
  end
end
