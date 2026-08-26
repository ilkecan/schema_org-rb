module SchemaOrg
  # https://schema.org/VacationRental
  #
  # A kind of lodging business that focuses on renting single properties for limited time.
  class VacationRental < Base
    include Mixins::VacationRental
    SCHEMA_TYPES = [self, SchemaOrg::LodgingBusiness, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
