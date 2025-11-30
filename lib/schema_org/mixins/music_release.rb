require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicRelease
      extend ActiveSupport::Concern

      include MusicPlaylist

      included do
        option :catalog_number, optional: true # The catalog number for the release.
        option :credited_to, optional: true # The group the release is credited to if different than the byArtist. For example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady Gaga.
        option :music_release_format, optional: true # Format of this release (the type of recording media used, i.e. compact disc, digital media, LP, etc.).
        option :record_label, optional: true # The label that issued the release.
        option :duration, optional: true # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :release_of, optional: true # The album this is a release of. Inverse-property: `album_release`.
      end
    end
  end
end
