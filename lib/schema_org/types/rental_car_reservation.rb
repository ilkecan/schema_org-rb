# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RentalCarReservation
  #
  # A reservation for a rental car.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations.
  class RentalCarReservation < Base
    include Mixins::RentalCarReservation

    SCHEMA_NAME = "RentalCarReservation"
    SCHEMA_TYPES = [self, SchemaOrg::Reservation, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
  end
end
