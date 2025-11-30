require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicGroup
      extend ActiveSupport::Concern

      include PerformingGroup

      included do
        option :albums # A collection of music albums. Superseded by `album`.
        option :genre # Genre of the creative work, broadcast channel or group.
        option :music_group_member # A member of a music group&#x2014;for example, John, Paul, George, or Ringo. Superseded by `member`.
        option :tracks # A music recording (track)&#x2014;usually a single song. Superseded by `track`.
        option :album # A music album. Supersedes `albums`.
        option :track # A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording. Supersedes `tracks`.
      end
    end
  end
end
