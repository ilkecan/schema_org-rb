module SchemaOrg
  # https://schema.org/ReservationPackage
  #
  # A group of multiple reservations with common values for all sub-reservations.
  class ReservationPackage < Base
    include Mixins::ReservationPackage
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
