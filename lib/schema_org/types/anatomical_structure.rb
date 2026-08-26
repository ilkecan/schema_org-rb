# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/AnatomicalStructure
  #
  # Any part of the human body, typically a component of an anatomical system. Organs, tissues, and cells are all anatomical structures.
  class AnatomicalStructure < Base
    include Mixins::AnatomicalStructure

    SCHEMA_NAME = "AnatomicalStructure"
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
