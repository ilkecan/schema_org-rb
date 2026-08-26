# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module DiscussionForumPosting
      include SocialMediaPosting

      def self.schema_property_definitions
        {}.freeze
      end
    end
  end
end
