# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/SchoolDistrict
  #
  # A School District is an administrative area for the administration of schools.
  class SchoolDistrict < Base
    include Mixins::SchoolDistrict

    SCHEMA_NAME = "SchoolDistrict"
    SCHEMA_TYPES = [self, SchemaOrg::AdministrativeArea, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
