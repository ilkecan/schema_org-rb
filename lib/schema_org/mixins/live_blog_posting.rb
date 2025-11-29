require "active_support/concern"

module SchemaOrg
  module Mixins
    module LiveBlogPosting
      extend ActiveSupport::Concern

      include BlogPosting

      included do
        option :coverage_end_time # The time when the live blog will stop covering the Event. Note that coverage may continue after the Event concludes.
        option :coverage_start_time # The time when the live blog will begin covering the Event. Note that coverage may begin before the Event's start time. The LiveBlogPosting may also be created before coverage begins.
        option :live_blog_update # An update to the LiveBlog.
      end
    end
  end
end
