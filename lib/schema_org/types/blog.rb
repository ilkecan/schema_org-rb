module SchemaOrg
  # https://schema.org/Blog
  #
  # A [blog](https://en.wikipedia.org/wiki/Blog), sometimes known as a "weblog". Note that the individual posts ([[BlogPosting]]s) in a [[Blog]] are often colloquially referred to by the same term.
  class Blog < Base
    include Mixins::Blog
  end
end
