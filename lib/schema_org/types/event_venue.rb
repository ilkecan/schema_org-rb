module SchemaOrg
  # https://schema.org/EventVenue
  #
  # An event venue.
  class EventVenue < Base
    include Mixins::EventVenue
  end
end
