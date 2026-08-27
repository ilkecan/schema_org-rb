# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/DrugPregnancyCategory
  #
  # Categories that represent an assessment of the risk of fetal injury due to a drug or pharmaceutical used as directed by the mother during pregnancy.
  class DrugPregnancyCategory < Base
    include Mixins::DrugPregnancyCategory

    SCHEMA_NAME = "DrugPregnancyCategory"
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
    FD_ACATEGORY_A = EnumerationValue.new("FDAcategoryA", [SchemaOrg::DrugPregnancyCategory])
    FD_ACATEGORY_B = EnumerationValue.new("FDAcategoryB", [SchemaOrg::DrugPregnancyCategory])
    FD_ACATEGORY_C = EnumerationValue.new("FDAcategoryC", [SchemaOrg::DrugPregnancyCategory])
    FD_ACATEGORY_D = EnumerationValue.new("FDAcategoryD", [SchemaOrg::DrugPregnancyCategory])
    FD_ACATEGORY_X = EnumerationValue.new("FDAcategoryX", [SchemaOrg::DrugPregnancyCategory])
    FD_ANOT_EVALUATED = EnumerationValue.new("FDAnotEvaluated", [SchemaOrg::DrugPregnancyCategory])
    VALUES = [FD_ACATEGORY_A, FD_ACATEGORY_B, FD_ACATEGORY_C, FD_ACATEGORY_D, FD_ACATEGORY_X, FD_ANOT_EVALUATED].freeze

    def self.values
      VALUES
    end
  end
end
