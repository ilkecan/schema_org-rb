require "active_support/concern"

module SchemaOrg
  module Mixins
    module GameServer
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :players_online, optional: true # Number of players on the server.
        option :server_status, optional: true # Status of a game server.
        option :game, optional: true # Video game which is played on this server. Inverse-property: `game_server`.
      end
    end
  end
end
