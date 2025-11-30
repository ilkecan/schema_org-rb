require "active_support/concern"

module SchemaOrg
  module Mixins
    module Blog
      extend ActiveSupport::Concern

      include CreativeWork

      included do
        option :blog_posts # Indicates a post that is part of a [[Blog]]. Note that historically, what we term a "Blog" was once known as a "weblog", and that what we term a "BlogPosting" is now often colloquially referred to as a "blog". Superseded by `blog_post`.
        option :issn # The International Standard Serial Number (ISSN) that identifies this serial publication. You can repeat this property to identify different formats of, or the linking ISSN (ISSN-L) for, this serial publication.
        option :blog_post # A posting that is part of this blog. Supersedes `blog_posts`.
      end
    end
  end
end
