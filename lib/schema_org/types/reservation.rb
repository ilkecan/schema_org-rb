module SchemaOrg
  # https://schema.org/Reservation
  #
  # Describes a reservation for travel, dining or an event. Some reservations require tickets. \n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, restaurant reservations, flights, or rental cars, use [[Offer]].
  class Reservation < Base
    include Mixins::Reservation
  end
end
