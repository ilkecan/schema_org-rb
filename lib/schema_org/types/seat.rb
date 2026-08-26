module SchemaOrg
  # https://schema.org/Seat
  #
  # Used to describe a seat, such as a reserved seat in an event reservation.
  class Seat < Base
    include Mixins::Seat
    SCHEMA_TYPES = [self, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
