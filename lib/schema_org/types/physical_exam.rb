# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/PhysicalExam
  #
  # A type of physical examination of a patient performed by a physician.
  class PhysicalExam < Base
    include Mixins::PhysicalExam

    SCHEMA_NAME = "PhysicalExam"
    SCHEMA_TYPES = [self, SchemaOrg::MedicalEnumeration, SchemaOrg::MedicalProcedure, SchemaOrg::Enumeration, SchemaOrg::MedicalEntity, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ABDOMEN = EnumerationValue.new("Abdomen", [SchemaOrg::PhysicalExam])
    APPEARANCE = EnumerationValue.new("Appearance", [SchemaOrg::PhysicalExam])
    CARDIOVASCULAR_EXAM = EnumerationValue.new("CardiovascularExam", [SchemaOrg::PhysicalExam])
    EAR = EnumerationValue.new("Ear", [SchemaOrg::PhysicalExam])
    EYE = EnumerationValue.new("Eye", [SchemaOrg::PhysicalExam])
    GENITOURINARY = EnumerationValue.new("Genitourinary", [SchemaOrg::PhysicalExam])
    HEAD = EnumerationValue.new("Head", [SchemaOrg::PhysicalExam])
    LUNG = EnumerationValue.new("Lung", [SchemaOrg::PhysicalExam])
    MUSCULOSKELETAL_EXAM = EnumerationValue.new("MusculoskeletalExam", [SchemaOrg::PhysicalExam])
    NECK = EnumerationValue.new("Neck", [SchemaOrg::PhysicalExam])
    NEURO = EnumerationValue.new("Neuro", [SchemaOrg::PhysicalExam])
    NOSE = EnumerationValue.new("Nose", [SchemaOrg::PhysicalExam])
    SKIN = EnumerationValue.new("Skin", [SchemaOrg::PhysicalExam])
    THROAT = EnumerationValue.new("Throat", [SchemaOrg::PhysicalExam])
    VALUES = [ABDOMEN, APPEARANCE, CARDIOVASCULAR_EXAM, EAR, EYE, GENITOURINARY, HEAD, LUNG, MUSCULOSKELETAL_EXAM, NECK, NEURO, NOSE, SKIN, THROAT].freeze

    def self.values
      VALUES
    end
  end
end
