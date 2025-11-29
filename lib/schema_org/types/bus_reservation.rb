module SchemaOrg
  # https://schema.org/BusReservation
  #
  # A reservation for bus travel. \n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use [[Offer]].
  class BusReservation < Base
    include Mixins::BusReservation
  end
end
