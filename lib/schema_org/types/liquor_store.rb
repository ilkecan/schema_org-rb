module SchemaOrg
  # https://schema.org/LiquorStore
  #
  # A shop that sells alcoholic drinks such as wine, beer, whisky and other spirits.
  class LiquorStore < Base
    include Mixins::LiquorStore
    SCHEMA_TYPES = [self, SchemaOrg::Store, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
