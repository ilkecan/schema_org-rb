# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ReservationStatusType
  #
  # Enumerated status values for Reservation.
  class ReservationStatusType < Base
    include Mixins::ReservationStatusType

    SCHEMA_NAME = "ReservationStatusType"
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
    RESERVATION_CANCELLED = EnumerationValue.new("ReservationCancelled", [SchemaOrg::ReservationStatusType])
    RESERVATION_CONFIRMED = EnumerationValue.new("ReservationConfirmed", [SchemaOrg::ReservationStatusType])
    RESERVATION_HOLD = EnumerationValue.new("ReservationHold", [SchemaOrg::ReservationStatusType])
    RESERVATION_PENDING = EnumerationValue.new("ReservationPending", [SchemaOrg::ReservationStatusType])
    VALUES = [RESERVATION_CANCELLED, RESERVATION_CONFIRMED, RESERVATION_HOLD, RESERVATION_PENDING].freeze

    def self.values
      VALUES
    end
  end
end
