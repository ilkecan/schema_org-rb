module SchemaOrg
  # https://schema.org/ReservationStatusType
  #
  # Enumerated status values for Reservation.
  class ReservationStatusType < Base
    include Mixins::ReservationStatusType
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_types
        SCHEMA_TYPES
      end

      def schema_type?(other_type)
        Base.schema_type_argument!(other_type)
        SCHEMA_TYPES.include?(other_type)
      end

      def new(**properties)
        super
      end
    end
    RESERVATION_CANCELLED = EnumerationValue.new("ReservationCancelled", self, [SchemaOrg::ReservationStatusType]).freeze
    RESERVATION_CONFIRMED = EnumerationValue.new("ReservationConfirmed", self, [SchemaOrg::ReservationStatusType]).freeze
    RESERVATION_HOLD = EnumerationValue.new("ReservationHold", self, [SchemaOrg::ReservationStatusType]).freeze
    RESERVATION_PENDING = EnumerationValue.new("ReservationPending", self, [SchemaOrg::ReservationStatusType]).freeze
    VALUES = [RESERVATION_CANCELLED, RESERVATION_CONFIRMED, RESERVATION_HOLD, RESERVATION_PENDING].freeze

    def self.values
      VALUES
    end
  end
end
