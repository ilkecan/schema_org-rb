require "active_support/concern"

module SchemaOrg
  module Mixins
    module GameServer
      extend ActiveSupport::Concern

      include Intangible

      included do
        option :players_online # Number of players on the server.
        option :server_status # Status of a game server.
        option :game # Video game which is played on this server.
      end
    end
  end
end
