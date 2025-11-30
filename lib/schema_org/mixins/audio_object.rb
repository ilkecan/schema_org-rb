require "active_support/concern"

module SchemaOrg
  module Mixins
    module AudioObject
      extend ActiveSupport::Concern

      include MediaObject

      included do
        option :caption, optional: true # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
        option :transcript, optional: true # If this MediaObject is an AudioObject or VideoObject, the transcript of that object.
      end
    end
  end
end
