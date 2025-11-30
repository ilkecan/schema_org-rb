require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicAlbum
      extend ActiveSupport::Concern

      include MusicPlaylist

      included do
        option :album_production_type # Classification of the album by its type of content: soundtrack, live album, studio album, etc.
        option :album_release_type # The kind of release which this album is: single, EP or album.
        option :by_artist # The artist that performed this album or recording.
        option :album_release # A release of this album. Inverse-property: `release_of`.
      end
    end
  end
end
