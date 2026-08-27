# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/MedicalEvidenceLevel
  #
  # Level of evidence for a medical guideline. Enumerated type.
  class MedicalEvidenceLevel < Base
    include Mixins::MedicalEvidenceLevel

    SCHEMA_NAME = "MedicalEvidenceLevel"
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
    EVIDENCE_LEVEL_A = EnumerationValue.new("EvidenceLevelA", [SchemaOrg::MedicalEvidenceLevel])
    EVIDENCE_LEVEL_B = EnumerationValue.new("EvidenceLevelB", [SchemaOrg::MedicalEvidenceLevel])
    EVIDENCE_LEVEL_C = EnumerationValue.new("EvidenceLevelC", [SchemaOrg::MedicalEvidenceLevel])
    VALUES = [EVIDENCE_LEVEL_A, EVIDENCE_LEVEL_B, EVIDENCE_LEVEL_C].freeze

    def self.values
      VALUES
    end
  end
end
