# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SurgicalProcedure
  #
  # A medical procedure involving an incision with instruments; performed for diagnose, or therapeutic purposes.
  class SurgicalProcedure < Base
    include Mixins::SurgicalProcedure

    SCHEMA_NAME = "SurgicalProcedure"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalProcedure, SchemaOrg::MedicalEntity, SchemaOrg::Thing].freeze

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
