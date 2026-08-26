# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalTestPanel
  #
  # Any collection of tests commonly ordered together.
  class MedicalTestPanel < Base
    include Mixins::MedicalTestPanel

    SCHEMA_NAME = "MedicalTestPanel"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalTest, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
