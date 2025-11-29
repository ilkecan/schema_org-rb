require "active_support/concern"

module SchemaOrg
  module Mixins
    module DiscussionForumPosting
      extend ActiveSupport::Concern

      include SocialMediaPosting
    end
  end
end
