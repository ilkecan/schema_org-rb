module SchemaOrg
  # https://schema.org/ReservationStatusType
  #
  # Enumerated status values for Reservation.
  class ReservationStatusType < Base
    include Mixins::ReservationStatusType
  end
end
