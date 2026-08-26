module SchemaOrg
  # https://schema.org/SportsOrganization
  #
  # Represents the collection of all sports organizations, including sports teams, governing bodies, and sports associations.
  class SportsOrganization < Base
    include Mixins::SportsOrganization
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
