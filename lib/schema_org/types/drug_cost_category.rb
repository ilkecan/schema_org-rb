# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/DrugCostCategory
  #
  # Enumerated categories of medical drug costs.
  class DrugCostCategory < Base
    include Mixins::DrugCostCategory

    SCHEMA_NAME = "DrugCostCategory"
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
    REIMBURSEMENT_CAP = EnumerationValue.new("ReimbursementCap", [SchemaOrg::DrugCostCategory])
    RETAIL = EnumerationValue.new("Retail", [SchemaOrg::DrugCostCategory])
    WHOLESALE = EnumerationValue.new("Wholesale", [SchemaOrg::DrugCostCategory])
    VALUES = [REIMBURSEMENT_CAP, RETAIL, WHOLESALE].freeze

    def self.values
      VALUES
    end
  end
end
