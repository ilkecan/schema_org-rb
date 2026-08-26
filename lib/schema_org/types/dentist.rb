# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/Dentist
  #
  # A dentist.
  class Dentist < Base
    include Mixins::Dentist

    SCHEMA_NAME = "Dentist"
    SCHEMA_TYPES = [self, SchemaOrg::LocalBusiness, SchemaOrg::MedicalBusiness, SchemaOrg::MedicalOrganization, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
