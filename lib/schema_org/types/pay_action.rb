module SchemaOrg
  # https://schema.org/PayAction
  #
  # An agent pays a price to a participant.
  class PayAction < Base
    include Mixins::PayAction
  end
end
