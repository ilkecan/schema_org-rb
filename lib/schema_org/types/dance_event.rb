module SchemaOrg
  # https://schema.org/DanceEvent
  #
  # Event type: A social dance.
  class DanceEvent < Base
    include Mixins::DanceEvent
  end
end
