require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoObject
      extend ActiveSupport::Concern

      include MediaObject

      included do
        option :actors, optional: true # An actor, e.g. in TV, radio, movie, video games etc. Actors can be associated with individual items or with a series, episode, clip. Superseded by `actor`.
        option :caption, optional: true # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
        option :directors, optional: true # A director of e.g. TV, radio, movie, video games etc. content. Directors can be associated with individual items or with a series, episode, clip. Superseded by `director`.
        option :music_by, optional: true # The composer of the soundtrack.
        option :transcript, optional: true # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
        option :video_frame_size, optional: true # The frame size of the video.
        option :video_quality, optional: true # The quality of the video.
        option :actor, optional: true # An actor (individual or a group), e.g. in TV, radio, movie, video games etc., or in an event. Actors can be associated with individual items or with a series, episode, clip. Supersedes `actors`.
        option :director, optional: true # A director of e.g. TV, radio, movie, video gaming etc. content, or of an event. Directors can be associated with individual items or with a series, episode, clip. Supersedes `directors`.
      end
    end
  end
end
