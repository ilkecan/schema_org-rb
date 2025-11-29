module SchemaOrg
  # https://schema.org/MusicRelease
  #
  # A MusicRelease is a specific release of a music album.
  class MusicRelease < Base
    include Mixins::MusicRelease
  end
end
