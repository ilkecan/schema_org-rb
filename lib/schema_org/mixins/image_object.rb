require "active_support/concern"

module SchemaOrg
  module Mixins
    module ImageObject
      extend ActiveSupport::Concern

      include MediaObject

      included do
        option :caption # The caption for this object. For downloadable machine formats (closed caption, subtitles etc.) use MediaObject and indicate the [[encodingFormat]].
        option :exif_data # exif data for this object.
        option :representative_of_page # Indicates whether this image is representative of the content of the page.
      end
    end
  end
end
