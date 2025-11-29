module SchemaOrg
  # https://schema.org/MusicEvent
  #
  # Event type: Music event.
  class MusicEvent < Base
    include Mixins::MusicEvent
  end
end
