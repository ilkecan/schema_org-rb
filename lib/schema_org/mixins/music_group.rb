require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicGroup
      extend ActiveSupport::Concern

      include PerformingGroup

      included do
        option :albums, optional: true # A collection of music albums. Superseded by `album`.
        option :genre, optional: true # Genre of the creative work, broadcast channel or group.
        option :music_group_member, optional: true # A member of a music group&#x2014;for example, John, Paul, George, or Ringo. Superseded by `member`.
        option :tracks, optional: true # A music recording (track)&#x2014;usually a single song. Superseded by `track`.
        option :album, optional: true # A music album. Supersedes `albums`.
        option :track, optional: true # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording. Supersedes `tracks`.
      end
    end
  end
end
