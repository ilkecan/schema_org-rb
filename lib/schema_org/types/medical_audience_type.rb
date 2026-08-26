# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalAudienceType
  #
  # Target audiences types for medical web pages. Enumerated type.
  class MedicalAudienceType < Base
    include Mixins::MedicalAudienceType

    SCHEMA_NAME = "MedicalAudienceType"
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
    CLINICIAN = EnumerationValue.new("Clinician", [SchemaOrg::MedicalAudienceType])
    MEDICAL_RESEARCHER = EnumerationValue.new("MedicalResearcher", [SchemaOrg::MedicalAudienceType])
    VALUES = [CLINICIAN, MEDICAL_RESEARCHER].freeze

    def self.values
      VALUES
    end
  end
end
