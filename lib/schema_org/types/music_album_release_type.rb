module SchemaOrg
  # https://schema.org/MusicAlbumReleaseType
  #
  # The kind of release which this album is: single, EP or album.
  class MusicAlbumReleaseType < Base
    include Mixins::MusicAlbumReleaseType
  end
end
