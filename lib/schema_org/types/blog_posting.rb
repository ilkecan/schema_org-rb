module SchemaOrg
  # https://schema.org/BlogPosting
  #
  # A blog post.
  class BlogPosting < Base
    include Mixins::BlogPosting
  end
end
