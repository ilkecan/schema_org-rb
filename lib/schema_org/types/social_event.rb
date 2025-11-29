module SchemaOrg
  # https://schema.org/SocialEvent
  #
  # Event type: Social event.
  class SocialEvent < Base
    include Mixins::SocialEvent
  end
end
