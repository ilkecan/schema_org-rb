module SchemaOrg
  # https://schema.org/GameServer
  #
  # Server that provides game interaction in a multiplayer game.
  class GameServer < Base
    include Mixins::GameServer
  end
end
