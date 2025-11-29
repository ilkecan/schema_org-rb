module SchemaOrg
  # https://schema.org/GamePlayMode
  #
  # Indicates whether this game is multi-player, co-op or single-player.
  class GamePlayMode < Base
    include Mixins::GamePlayMode
  end
end
