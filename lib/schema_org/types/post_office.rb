module SchemaOrg
  # https://schema.org/PostOffice
  #
  # A post office.
  class PostOffice < Base
    include Mixins::PostOffice
    SCHEMA_TYPES = [self, SchemaOrg::GovernmentOffice, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
