require "active_support/concern"

module SchemaOrg
  module Mixins
    module UserTweets
      extend ActiveSupport::Concern

      include UserInteraction
    end
  end
end
