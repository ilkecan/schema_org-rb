# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/RadiationTherapy
  #
  # A process of care using radiation aimed at improving a health condition.
  class RadiationTherapy < Base
    include Mixins::RadiationTherapy

    SCHEMA_NAME = "RadiationTherapy"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalTherapy, SchemaOrg::TherapeuticProcedure, SchemaOrg::MedicalProcedure, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
