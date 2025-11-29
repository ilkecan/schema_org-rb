require "active_support/concern"

module SchemaOrg
  module Mixins
    module VideoGallery
      extend ActiveSupport::Concern

      include MediaGallery
    end
  end
end
