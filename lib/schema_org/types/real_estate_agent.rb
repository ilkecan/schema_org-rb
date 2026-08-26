module SchemaOrg
  # https://schema.org/RealEstateAgent
  #
  # A real-estate agent.
  class RealEstateAgent < Base
    include Mixins::RealEstateAgent
    SCHEMA_TYPES = [self, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
