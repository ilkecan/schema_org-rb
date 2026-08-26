module SchemaOrg
  # https://schema.org/StadiumOrArena
  #
  # A stadium.
  class StadiumOrArena < Base
    include Mixins::StadiumOrArena
    SCHEMA_TYPES = [self, SchemaOrg::CivicStructure, SchemaOrg::SportsActivityLocation, SchemaOrg::Place, SchemaOrg::LocalBusiness, SchemaOrg::Thing, SchemaOrg::Organization].freeze

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
