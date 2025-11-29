require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicGroup
      extend ActiveSupport::Concern

      include PerformingGroup

      included do
        option :albums # A collection of music albums.
        option :genre # Genre of the creative work, broadcast channel or group.
        option :music_group_member # A member of a music group&#x2014;for example, John, Paul, George, or Ringo.
        option :tracks # A music recording (track)&#x2014;usually a single song.
        option :album # A music album.
        option :track # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording.
      end
    end
  end
end
