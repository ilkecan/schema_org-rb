module SchemaOrg
  # https://schema.org/Ticket
  #
  # Used to describe a ticket to an event, a flight, a bus ride, etc.
  class Ticket < Base
    include Mixins::Ticket
  end
end
