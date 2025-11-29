module SchemaOrg
  # https://schema.org/TheaterEvent
  #
  # Event type: Theater performance.
  class TheaterEvent < Base
    include Mixins::TheaterEvent
  end
end
