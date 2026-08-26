# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalSignOrSymptom
  #
  # Any feature associated or not with a medical condition. In medicine a symptom is generally subjective while a sign is objective.
  class MedicalSignOrSymptom < Base
    include Mixins::MedicalSignOrSymptom

    SCHEMA_NAME = "MedicalSignOrSymptom"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalCondition, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
