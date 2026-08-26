# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DrugLegalStatus
  #
  # The legal availability status of a medical drug.
  class DrugLegalStatus < Base
    include Mixins::DrugLegalStatus

    SCHEMA_NAME = "DrugLegalStatus"
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
