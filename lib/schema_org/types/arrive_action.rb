module SchemaOrg
  # https://schema.org/ArriveAction
  #
  # The act of arriving at a place. An agent arrives at a destination from a fromLocation, optionally with participants.
  class ArriveAction < Base
    include Mixins::ArriveAction
  end
end
