require "active_support/concern"

module SchemaOrg
  module Mixins
    module ScreeningEvent
      extend ActiveSupport::Concern

      include Event

      included do
        option :subtitle_language, optional: true # Languages in which subtitles/captions are available, in [IETF BCP 47 standard format](http://tools.ietf.org/html/bcp47).
        option :video_format, optional: true # The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD, etc.).
        option :work_presented, optional: true # The movie presented during this event.
      end
    end
  end
end
