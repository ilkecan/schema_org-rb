module SchemaOrg
  # https://schema.org/RsvpResponseType
  #
  # RsvpResponseType is an enumeration type whose instances represent responding to an RSVP request.
  class RsvpResponseType < Base
    include Mixins::RsvpResponseType
  end
end
