# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/TrainReservation
  #
  # A reservation for train travel.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations. For offers of tickets, use [[Offer]].
  class TrainReservation < Base
    include Mixins::TrainReservation

    SCHEMA_NAME = "TrainReservation"
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
