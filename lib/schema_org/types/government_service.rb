module SchemaOrg
  # https://schema.org/GovernmentService
  #
  # A service provided by a government organization, e.g. food stamps, veterans benefits, etc.
  class GovernmentService < Base
    include Mixins::GovernmentService
  end
end
