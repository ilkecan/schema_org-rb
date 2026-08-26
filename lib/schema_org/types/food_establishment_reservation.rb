module SchemaOrg
  # https://schema.org/FoodEstablishmentReservation
  #
  # A reservation to dine at a food-related business.\n\nNote: This type is for information about actual reservations, e.g. in confirmation emails or HTML pages with individual confirmations of reservations.
  class FoodEstablishmentReservation < Base
    include Mixins::FoodEstablishmentReservation
    SCHEMA_TYPES = [self, SchemaOrg::Reservation, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
  end
end
