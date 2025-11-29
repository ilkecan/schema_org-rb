require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserDownloads
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
