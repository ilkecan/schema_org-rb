module SchemaOrg
  # https://schema.org/Organization
  #
  # An organization such as a school, NGO, corporation, club, etc.
  class Organization < Base
    include Mixins::Organization
    SCHEMA_TYPES = [self, SchemaOrg::Thing].freeze

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
