# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalBusiness
  #
  # A particular physical or virtual business of an organization for medical purposes. Examples of MedicalBusiness include different businesses run by health professionals.
  class MedicalBusiness < Base
    include Mixins::MedicalBusiness

    SCHEMA_NAME = "MedicalBusiness"
    SCHEMA_TYPES = [self, SchemaOrg::LocalBusiness, SchemaOrg::Organization, SchemaOrg::Place, SchemaOrg::Thing].freeze

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
