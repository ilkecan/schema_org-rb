# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalSymptom
  #
  # Any complaint sensed and expressed by the patient (therefore defined as subjective)  like stomachache, lower-back pain, or fatigue.
  class MedicalSymptom < Base
    include Mixins::MedicalSymptom

    SCHEMA_NAME = "MedicalSymptom"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalSignOrSymptom, SchemaOrg::MedicalCondition, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
