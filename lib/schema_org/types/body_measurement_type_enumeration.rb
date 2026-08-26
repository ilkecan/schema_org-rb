# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/BodyMeasurementTypeEnumeration
  #
  # Enumerates types (or dimensions) of a person's body measurements, for example for fitting of clothes.
  class BodyMeasurementTypeEnumeration < Base
    include Mixins::BodyMeasurementTypeEnumeration

    SCHEMA_NAME = "BodyMeasurementTypeEnumeration"
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
    BODY_MEASUREMENT_ARM = EnumerationValue.new("BodyMeasurementArm", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_BUST = EnumerationValue.new("BodyMeasurementBust", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_CHEST = EnumerationValue.new("BodyMeasurementChest", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_FOOT = EnumerationValue.new("BodyMeasurementFoot", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_HAND = EnumerationValue.new("BodyMeasurementHand", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_HEAD = EnumerationValue.new("BodyMeasurementHead", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_HEIGHT = EnumerationValue.new("BodyMeasurementHeight", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_HIPS = EnumerationValue.new("BodyMeasurementHips", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_INSIDE_LEG = EnumerationValue.new("BodyMeasurementInsideLeg", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_NECK = EnumerationValue.new("BodyMeasurementNeck", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_UNDERBUST = EnumerationValue.new("BodyMeasurementUnderbust", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_WAIST = EnumerationValue.new("BodyMeasurementWaist", [SchemaOrg::BodyMeasurementTypeEnumeration])
    BODY_MEASUREMENT_WEIGHT = EnumerationValue.new("BodyMeasurementWeight", [SchemaOrg::BodyMeasurementTypeEnumeration])
    VALUES = [BODY_MEASUREMENT_ARM, BODY_MEASUREMENT_BUST, BODY_MEASUREMENT_CHEST, BODY_MEASUREMENT_FOOT, BODY_MEASUREMENT_HAND, BODY_MEASUREMENT_HEAD, BODY_MEASUREMENT_HEIGHT, BODY_MEASUREMENT_HIPS, BODY_MEASUREMENT_INSIDE_LEG, BODY_MEASUREMENT_NECK, BODY_MEASUREMENT_UNDERBUST, BODY_MEASUREMENT_WAIST, BODY_MEASUREMENT_WEIGHT].freeze

    def self.values
      VALUES
    end
  end
end
