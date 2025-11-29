module SchemaOrg
  # https://schema.org/MusicStore
  #
  # A music store.
  class MusicStore < Base
    include Mixins::MusicStore
  end
end
