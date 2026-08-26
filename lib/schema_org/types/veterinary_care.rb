# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/VeterinaryCare
  #
  # A vet's office.
  class VeterinaryCare < Base
    include Mixins::VeterinaryCare

    SCHEMA_NAME = "VeterinaryCare"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalOrganization, SchemaOrg::Organization, SchemaOrg::Thing].freeze

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
