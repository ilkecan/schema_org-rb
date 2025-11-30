require "active_support/concern"

module SchemaOrg
  module Mixins
    module MusicRecording
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :by_artist # The artist that performed this album or recording.
        option :in_album # The album to which this recording belongs.
        option :in_playlist # The playlist to which this recording belongs.
        option :isrc_code # The International Standard Recording Code for the recording.
        option :duration # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
        option :recording_of # The composition this track is a recording of. Inverse-property: `recorded_as`.
      end
    end
  end
end
