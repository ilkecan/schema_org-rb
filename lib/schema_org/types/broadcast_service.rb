module SchemaOrg
  # https://schema.org/BroadcastService
  #
  # A delivery service through which content is provided via broadcast over the air or online.
  class BroadcastService < Base
    include Mixins::BroadcastService
  end
end
