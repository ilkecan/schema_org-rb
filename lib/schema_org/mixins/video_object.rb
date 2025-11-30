require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoObject
      extend ActiveSupport::Concern

      include MediaObject

      included do
        option :actors # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :caption # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
        option :directors # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :music_by # The composer of the soundtrack.
        option :transcript # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
        option :video_frame_size # The frame size of the video.
        option :video_quality # The quality of the video.
        option :actor # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
      end
    end
  end
end
