# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/ExercisePlan
  #
  # Fitness-related activity designed for a specific health-related purpose, including defined exercise routines as well as activity prescribed by a clinician.
  class ExercisePlan < Base
    include Mixins::ExercisePlan

    SCHEMA_NAME = "ExercisePlan"
    SCHEMA_TYPES = [self, SchemaOrg::CreativeWork, SchemaOrg::PhysicalActivity, SchemaOrg::Thing, SchemaOrg::LifestyleModification, SchemaOrg::MedicalEntity].freeze

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
