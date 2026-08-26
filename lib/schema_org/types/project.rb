# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Project
  #
  # An enterprise (potentially individual but typically collaborative), planned to achieve a particular aim.
  # Use properties from [[Organization]], [[subOrganization]]/[[parentOrganization]] to indicate project sub-structures.
  class Project < Base
    include Mixins::Project

    SCHEMA_NAME = "Project"
    SCHEMA_TYPES = [self, SchemaOrg::Organization, SchemaOrg::Thing].freeze

    class << self
      def schema_name
        SCHEMA_NAME
      end

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
