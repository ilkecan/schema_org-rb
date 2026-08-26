# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalTrialDesign
  #
  # Design models for medical trials. Enumerated type.
  class MedicalTrialDesign < Base
    include Mixins::MedicalTrialDesign

    SCHEMA_NAME = "MedicalTrialDesign"
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
    DOUBLE_BLINDED_TRIAL = EnumerationValue.new("DoubleBlindedTrial", [SchemaOrg::MedicalTrialDesign])
    INTERNATIONAL_TRIAL = EnumerationValue.new("InternationalTrial", [SchemaOrg::MedicalTrialDesign])
    MULTI_CENTER_TRIAL = EnumerationValue.new("MultiCenterTrial", [SchemaOrg::MedicalTrialDesign])
    OPEN_TRIAL = EnumerationValue.new("OpenTrial", [SchemaOrg::MedicalTrialDesign])
    PLACEBO_CONTROLLED_TRIAL = EnumerationValue.new("PlaceboControlledTrial", [SchemaOrg::MedicalTrialDesign])
    RANDOMIZED_TRIAL = EnumerationValue.new("RandomizedTrial", [SchemaOrg::MedicalTrialDesign])
    SINGLE_BLINDED_TRIAL = EnumerationValue.new("SingleBlindedTrial", [SchemaOrg::MedicalTrialDesign])
    SINGLE_CENTER_TRIAL = EnumerationValue.new("SingleCenterTrial", [SchemaOrg::MedicalTrialDesign])
    TRIPLE_BLINDED_TRIAL = EnumerationValue.new("TripleBlindedTrial", [SchemaOrg::MedicalTrialDesign])
    VALUES = [DOUBLE_BLINDED_TRIAL, INTERNATIONAL_TRIAL, MULTI_CENTER_TRIAL, OPEN_TRIAL, PLACEBO_CONTROLLED_TRIAL, RANDOMIZED_TRIAL, SINGLE_BLINDED_TRIAL, SINGLE_CENTER_TRIAL, TRIPLE_BLINDED_TRIAL].freeze

    def self.values
      VALUES
    end
  end
end
