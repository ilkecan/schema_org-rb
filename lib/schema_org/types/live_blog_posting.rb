module SchemaOrg
  # https://schema.org/LiveBlogPosting
  #
  # A [[LiveBlogPosting]] is a [[BlogPosting]] intended to provide a rolling textual coverage of an ongoing event through continuous updates.
  class LiveBlogPosting
    include Mixins::LiveBlogPosting
  end
end
