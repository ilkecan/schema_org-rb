# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicineSystem
  #
  # Systems of medical practice.
  class MedicineSystem < Base
    include Mixins::MedicineSystem

    SCHEMA_NAME = "MedicineSystem"
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
    AYURVEDIC = EnumerationValue.new("Ayurvedic", [SchemaOrg::MedicineSystem])
    CHIROPRACTIC = EnumerationValue.new("Chiropractic", [SchemaOrg::MedicineSystem])
    HOMEOPATHIC = EnumerationValue.new("Homeopathic", [SchemaOrg::MedicineSystem])
    OSTEOPATHIC = EnumerationValue.new("Osteopathic", [SchemaOrg::MedicineSystem])
    TRADITIONAL_CHINESE = EnumerationValue.new("TraditionalChinese", [SchemaOrg::MedicineSystem])
    WESTERN_CONVENTIONAL = EnumerationValue.new("WesternConventional", [SchemaOrg::MedicineSystem])
    VALUES = [AYURVEDIC, CHIROPRACTIC, HOMEOPATHIC, OSTEOPATHIC, TRADITIONAL_CHINESE, WESTERN_CONVENTIONAL].freeze

    def self.values
      VALUES
    end
  end
end
