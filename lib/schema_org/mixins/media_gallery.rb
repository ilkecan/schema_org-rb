require "active_support/concern"

module SchemaOrg
  module Mixins
    module MediaGallery
      extend ActiveSupport::Concern

      include CollectionPage
    end
  end
end
