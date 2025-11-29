module SchemaOrg
  # https://schema.org/MediaSubscription
  #
  # A subscription which allows a user to access media including audio, video, books, etc.
  class MediaSubscription < Base
    include Mixins::MediaSubscription
  end
end
