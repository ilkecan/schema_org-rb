module SchemaOrg
  # https://schema.org/OrganizationRole
  #
  # A subclass of Role used to describe roles within organizations.
  class OrganizationRole < Base
    include Mixins::OrganizationRole
    SCHEMA_TYPES = [self, SchemaOrg::Role, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
