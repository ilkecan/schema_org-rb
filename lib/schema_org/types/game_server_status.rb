module SchemaOrg
  # https://schema.org/GameServerStatus
  #
  # Status of a game server.
  class GameServerStatus < Base
    include Mixins::GameServerStatus
  end
end
