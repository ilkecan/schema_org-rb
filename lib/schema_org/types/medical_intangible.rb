# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalIntangible
  #
  # A utility class that serves as the umbrella for a number of 'intangible' things in the medical space.
  class MedicalIntangible < Base
    include Mixins::MedicalIntangible

    SCHEMA_NAME = "MedicalIntangible"
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
