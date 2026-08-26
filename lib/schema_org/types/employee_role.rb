module SchemaOrg
  # https://schema.org/EmployeeRole
  #
  # A subclass of OrganizationRole used to describe employee relationships.
  class EmployeeRole < Base
    include Mixins::EmployeeRole
    SCHEMA_TYPES = [self, SchemaOrg::OrganizationRole, SchemaOrg::Role, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
