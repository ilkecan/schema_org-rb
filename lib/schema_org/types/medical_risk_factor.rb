# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalRiskFactor
  #
  # A risk factor is anything that increases a person's likelihood of developing or contracting a disease, medical condition, or complication.
  class MedicalRiskFactor < Base
    include Mixins::MedicalRiskFactor

    SCHEMA_NAME = "MedicalRiskFactor"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
