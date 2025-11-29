module SchemaOrg
  # https://schema.org/BusinessEvent
  #
  # Event type: Business event.
  class BusinessEvent < Base
    include Mixins::BusinessEvent
  end
end
