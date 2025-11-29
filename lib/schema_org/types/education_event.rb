module SchemaOrg
  # https://schema.org/EducationEvent
  #
  # Event type: Education event.
  class EducationEvent < Base
    include Mixins::EducationEvent
  end
end
