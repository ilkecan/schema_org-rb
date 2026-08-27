# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/PhysicalActivityCategory
  #
  # Categories of physical activity, organized by physiologic classification.
  class PhysicalActivityCategory < Base
    include Mixins::PhysicalActivityCategory

    SCHEMA_NAME = "PhysicalActivityCategory"
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    AEROBIC_ACTIVITY = EnumerationValue.new("AerobicActivity", [SchemaOrg::PhysicalActivityCategory])
    ANAEROBIC_ACTIVITY = EnumerationValue.new("AnaerobicActivity", [SchemaOrg::PhysicalActivityCategory])
    BALANCE = EnumerationValue.new("Balance", [SchemaOrg::PhysicalActivityCategory])
    FLEXIBILITY = EnumerationValue.new("Flexibility", [SchemaOrg::PhysicalActivityCategory])
    LEISURE_TIME_ACTIVITY = EnumerationValue.new("LeisureTimeActivity", [SchemaOrg::PhysicalActivityCategory])
    OCCUPATIONAL_ACTIVITY = EnumerationValue.new("OccupationalActivity", [SchemaOrg::PhysicalActivityCategory])
    STRENGTH_TRAINING = EnumerationValue.new("StrengthTraining", [SchemaOrg::PhysicalActivityCategory])
    VALUES = [AEROBIC_ACTIVITY, ANAEROBIC_ACTIVITY, BALANCE, FLEXIBILITY, LEISURE_TIME_ACTIVITY, OCCUPATIONAL_ACTIVITY, STRENGTH_TRAINING].freeze

    def self.values
      VALUES
    end
  end
end
