# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalConditionStage
  #
  # A stage of a medical condition, such as 'Stage IIIa'.
  class MedicalConditionStage < Base
    include Mixins::MedicalConditionStage

    SCHEMA_NAME = "MedicalConditionStage"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalIntangible, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
