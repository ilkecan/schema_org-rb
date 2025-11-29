module SchemaOrg
  # https://schema.org/RentalCarReservation
  #
  # A reservation for a rental car.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations.
  class RentalCarReservation < Base
    include Mixins::RentalCarReservation
  end
end
