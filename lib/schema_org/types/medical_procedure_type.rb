# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/MedicalProcedureType
  #
  # An enumeration that describes different types of medical procedures.
  class MedicalProcedureType < Base
    include Mixins::MedicalProcedureType

    SCHEMA_NAME = "MedicalProcedureType"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    NONINVASIVE_PROCEDURE = EnumerationValue.new("NoninvasiveProcedure", [SchemaOrg::MedicalProcedureType])
    PERCUTANEOUS_PROCEDURE = EnumerationValue.new("PercutaneousProcedure", [SchemaOrg::MedicalProcedureType])
    VALUES = [NONINVASIVE_PROCEDURE, PERCUTANEOUS_PROCEDURE].freeze

    def self.values
      VALUES
    end
  end
end
