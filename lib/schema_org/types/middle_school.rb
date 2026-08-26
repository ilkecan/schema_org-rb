module SchemaOrg
  # https://schema.org/MiddleSchool
  #
  # A middle school (typically for children aged around 11-14, although this varies somewhat).
  class MiddleSchool < Base
    include Mixins::MiddleSchool
    SCHEMA_TYPES = [self, SchemaOrg::EducationalOrganization, SchemaOrg::CivicStructure, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
