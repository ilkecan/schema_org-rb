module SchemaOrg
  # https://schema.org/LiteraryEvent
  #
  # Event type: Literary event.
  class LiteraryEvent < Base
    include Mixins::LiteraryEvent
  end
end
