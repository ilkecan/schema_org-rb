module SchemaOrg
  # https://schema.org/DiscussionForumPosting
  #
  # A posting to a discussion forum.
  class DiscussionForumPosting < Base
    include Mixins::DiscussionForumPosting
  end
end
