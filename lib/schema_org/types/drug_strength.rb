# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DrugStrength
  #
  # A specific strength in which a medical drug is available in a specific country.
  class DrugStrength < Base
    include Mixins::DrugStrength

    SCHEMA_NAME = "DrugStrength"
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
