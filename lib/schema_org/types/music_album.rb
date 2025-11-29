module SchemaOrg
  # https://schema.org/MusicAlbum
  #
  # A collection of music tracks.
  class MusicAlbum < Base
    include Mixins::MusicAlbum
  end
end
