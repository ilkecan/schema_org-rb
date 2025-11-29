module SchemaOrg
  # https://schema.org/EventStatusType
  #
  # EventStatusType is an enumeration type whose instances represent several states that an Event may be in.
  class EventStatusType < Base
    include Mixins::EventStatusType
  end
end
