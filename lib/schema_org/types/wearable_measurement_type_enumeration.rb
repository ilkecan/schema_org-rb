# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/WearableMeasurementTypeEnumeration
  #
  # Enumerates common types of measurement for wearables products.
  class WearableMeasurementTypeEnumeration < Base
    include Mixins::WearableMeasurementTypeEnumeration

    SCHEMA_NAME = "WearableMeasurementTypeEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::MeasurementTypeEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    WEARABLE_MEASUREMENT_BACK = EnumerationValue.new("WearableMeasurementBack", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_CHEST_OR_BUST = EnumerationValue.new("WearableMeasurementChestOrBust", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_COLLAR = EnumerationValue.new("WearableMeasurementCollar", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_CUP = EnumerationValue.new("WearableMeasurementCup", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_HEIGHT = EnumerationValue.new("WearableMeasurementHeight", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_HIPS = EnumerationValue.new("WearableMeasurementHips", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_INSEAM = EnumerationValue.new("WearableMeasurementInseam", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_LENGTH = EnumerationValue.new("WearableMeasurementLength", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_OUTSIDE_LEG = EnumerationValue.new("WearableMeasurementOutsideLeg", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_SLEEVE = EnumerationValue.new("WearableMeasurementSleeve", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_WAIST = EnumerationValue.new("WearableMeasurementWaist", [SchemaOrg::WearableMeasurementTypeEnumeration])
    WEARABLE_MEASUREMENT_WIDTH = EnumerationValue.new("WearableMeasurementWidth", [SchemaOrg::WearableMeasurementTypeEnumeration])
    VALUES = [WEARABLE_MEASUREMENT_BACK, WEARABLE_MEASUREMENT_CHEST_OR_BUST, WEARABLE_MEASUREMENT_COLLAR, WEARABLE_MEASUREMENT_CUP, WEARABLE_MEASUREMENT_HEIGHT, WEARABLE_MEASUREMENT_HIPS, WEARABLE_MEASUREMENT_INSEAM, WEARABLE_MEASUREMENT_LENGTH, WEARABLE_MEASUREMENT_OUTSIDE_LEG, WEARABLE_MEASUREMENT_SLEEVE, WEARABLE_MEASUREMENT_WAIST, WEARABLE_MEASUREMENT_WIDTH].freeze

    def self.values
      VALUES
    end
  end
end
