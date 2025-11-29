module SchemaOrg
  # https://schema.org/ComedyEvent
  #
  # Event type: Comedy event.
  class ComedyEvent < Base
    include Mixins::ComedyEvent
  end
end
