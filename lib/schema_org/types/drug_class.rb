# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/DrugClass
  #
  # A class of medical drugs, e.g., statins. Classes can represent general pharmacological class, common mechanisms of action, common physiological effects, etc.
  class DrugClass < Base
    include Mixins::DrugClass

    SCHEMA_NAME = "DrugClass"
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
