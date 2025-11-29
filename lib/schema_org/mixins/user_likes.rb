require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserLikes
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
