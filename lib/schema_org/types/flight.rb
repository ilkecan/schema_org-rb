module SchemaOrg
  # https://schema.org/Flight
  #
  # An airline flight.
  class Flight < Base
    include Mixins::Flight
    SCHEMA_TYPES = [self, SchemaOrg::Trip, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
