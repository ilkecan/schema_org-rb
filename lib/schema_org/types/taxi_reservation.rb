module SchemaOrg
  # https://schema.org/TaxiReservation
  #
  # A reservation for a taxi.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use [[Offer]].
  class TaxiReservation
    include Mixins::TaxiReservation
  end
end
