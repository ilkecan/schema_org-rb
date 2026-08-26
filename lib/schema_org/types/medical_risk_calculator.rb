# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalRiskCalculator
  #
  # A complex mathematical calculation requiring an online calculator, used to assess prognosis. Note: use the url property of Thing to record any URLs for online calculators.
  class MedicalRiskCalculator < Base
    include Mixins::MedicalRiskCalculator

    SCHEMA_NAME = "MedicalRiskCalculator"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalRiskEstimator, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
