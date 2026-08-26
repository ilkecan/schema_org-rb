module SchemaOrg
  # https://schema.org/ApartmentComplex
  #
  # Residence type: Apartment complex.
  class ApartmentComplex < Base
    include Mixins::ApartmentComplex
    SCHEMA_TYPES = [self, SchemaOrg::Residence, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
