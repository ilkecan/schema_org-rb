# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/WearableSizeSystemEnumeration
  #
  # Enumerates common size systems specific for wearable products.
  class WearableSizeSystemEnumeration < Base
    include Mixins::WearableSizeSystemEnumeration

    SCHEMA_NAME = "WearableSizeSystemEnumeration"
    SCHEMA_TYPES = [self, SchemaOrg::SizeSystemEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    WEARABLE_SIZE_SYSTEM_AU = EnumerationValue.new("WearableSizeSystemAU", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_BR = EnumerationValue.new("WearableSizeSystemBR", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_CN = EnumerationValue.new("WearableSizeSystemCN", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_CONTINENTAL = EnumerationValue.new("WearableSizeSystemContinental", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_DE = EnumerationValue.new("WearableSizeSystemDE", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_EN13402 = EnumerationValue.new("WearableSizeSystemEN13402", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_EUROPE = EnumerationValue.new("WearableSizeSystemEurope", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_FR = EnumerationValue.new("WearableSizeSystemFR", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_GS1 = EnumerationValue.new("WearableSizeSystemGS1", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_IT = EnumerationValue.new("WearableSizeSystemIT", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_JP = EnumerationValue.new("WearableSizeSystemJP", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_MX = EnumerationValue.new("WearableSizeSystemMX", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_UK = EnumerationValue.new("WearableSizeSystemUK", [SchemaOrg::WearableSizeSystemEnumeration])
    WEARABLE_SIZE_SYSTEM_US = EnumerationValue.new("WearableSizeSystemUS", [SchemaOrg::WearableSizeSystemEnumeration])
    VALUES = [WEARABLE_SIZE_SYSTEM_AU, WEARABLE_SIZE_SYSTEM_BR, WEARABLE_SIZE_SYSTEM_CN, WEARABLE_SIZE_SYSTEM_CONTINENTAL, WEARABLE_SIZE_SYSTEM_DE, WEARABLE_SIZE_SYSTEM_EN13402, WEARABLE_SIZE_SYSTEM_EUROPE, WEARABLE_SIZE_SYSTEM_FR, WEARABLE_SIZE_SYSTEM_GS1, WEARABLE_SIZE_SYSTEM_IT, WEARABLE_SIZE_SYSTEM_JP, WEARABLE_SIZE_SYSTEM_MX, WEARABLE_SIZE_SYSTEM_UK, WEARABLE_SIZE_SYSTEM_US].freeze

    def self.values
      VALUES
    end
  end
end
