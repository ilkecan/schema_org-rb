module SchemaOrg
  # https://schema.org/EventReservation
  #
  # A reservation for an event like a concert, sporting event, or lecture.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use [[Offer]].
  class EventReservation
    include Types::EventReservation
  end
end
