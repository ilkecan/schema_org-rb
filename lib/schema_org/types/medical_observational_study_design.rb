# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalObservationalStudyDesign
  #
  # Design models for observational medical studies. Enumerated type.
  class MedicalObservationalStudyDesign < Base
    include Mixins::MedicalObservationalStudyDesign

    SCHEMA_NAME = "MedicalObservationalStudyDesign"
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
    CASE_SERIES = EnumerationValue.new("CaseSeries", [SchemaOrg::MedicalObservationalStudyDesign])
    COHORT_STUDY = EnumerationValue.new("CohortStudy", [SchemaOrg::MedicalObservationalStudyDesign])
    CROSS_SECTIONAL = EnumerationValue.new("CrossSectional", [SchemaOrg::MedicalObservationalStudyDesign])
    LONGITUDINAL = EnumerationValue.new("Longitudinal", [SchemaOrg::MedicalObservationalStudyDesign])
    OBSERVATIONAL = EnumerationValue.new("Observational", [SchemaOrg::MedicalObservationalStudyDesign])
    REGISTRY = EnumerationValue.new("Registry", [SchemaOrg::MedicalObservationalStudyDesign])
    VALUES = [CASE_SERIES, COHORT_STUDY, CROSS_SECTIONAL, LONGITUDINAL, OBSERVATIONAL, REGISTRY].freeze

    def self.values
      VALUES
    end
  end
end
