module SchemaOrg
  # https://schema.org/SocialMediaPosting
  #
  # A post to a social media platform, including blog posts, tweets, Facebook posts, etc.
  class SocialMediaPosting < Base
    include Mixins::SocialMediaPosting
  end
end
