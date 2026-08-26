module SchemaOrg
  # https://schema.org/PublicSwimmingPool
  #
  # A public swimming pool.
  class PublicSwimmingPool < Base
    include Mixins::PublicSwimmingPool
    SCHEMA_TYPES = [self, SchemaOrg::SportsActivityLocation, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
