# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalCondition
  #
  # Any condition of the human body that affects the normal functioning of a person, whether physically or mentally. Includes diseases, injuries, disabilities, disorders, syndromes, etc.
  class MedicalCondition < Base
    include Mixins::MedicalCondition

    SCHEMA_NAME = "MedicalCondition"
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
