module SchemaOrg
  # https://schema.org/SportsEvent
  #
  # Event type: Sports event.
  class SportsEvent < Base
    include Mixins::SportsEvent
  end
end
