# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalIndication
  #
  # A condition or factor that indicates use of a medical therapy, including signs, symptoms, risk factors, anatomical states, etc.
  class MedicalIndication < Base
    include Mixins::MedicalIndication

    SCHEMA_NAME = "MedicalIndication"
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
