require "active_support/concern"

module SchemaOrg
  module Mixins
    module Comment
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :downvote_count # The number of downvotes this question, answer or comment has received from the community.
        option :parent_item # The parent of a question, answer or item in general. Typically used for Q/A discussion threads e.g. a chain of comments with the first comment being an [[Article]] or other [[CreativeWork]]. See also [[comment]] which points from something to a comment about it.
        option :shared_content # A CreativeWork such as an image, video, or audio clip shared as part of this posting.
        option :upvote_count # The number of upvotes this question, answer or comment has received from the community.
      end
    end
  end
end
