module SchemaOrg
  # https://schema.org/ScreeningEvent
  #
  # A screening of a movie or other video.
  class ScreeningEvent < Base
    include Mixins::ScreeningEvent
  end
end
