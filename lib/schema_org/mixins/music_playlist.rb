require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicPlaylist
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :num_tracks # The number of tracks in this album or playlist.
        option :tracks # A music recording (track)&#x2014;usually a single song. Superseded by `track`.
        option :track # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording. Supersedes `tracks`.
      end
    end
  end
end
