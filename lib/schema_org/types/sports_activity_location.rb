module SchemaOrg
  # https://schema.org/SportsActivityLocation
  #
  # A sports location, such as a playing field.
  class SportsActivityLocation < Base
    include Mixins::SportsActivityLocation
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
