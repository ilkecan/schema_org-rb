# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/MedicalGuidelineContraindication
  #
  # A guideline contraindication that designates a process as harmful and where quality of the data supporting the contraindication is sound.
  class MedicalGuidelineContraindication < Base
    include Mixins::MedicalGuidelineContraindication

    SCHEMA_NAME = "MedicalGuidelineContraindication"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalGuideline, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
