# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/SizeSystemEnumeration
  #
  # Enumerates common size systems for different categories of products, for example "EN-13402" or "UK" for wearables or "Imperial" for screws.
  class SizeSystemEnumeration < Base
    include Mixins::SizeSystemEnumeration

    SCHEMA_NAME = "SizeSystemEnumeration"
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
    SIZE_SYSTEM_IMPERIAL = EnumerationValue.new("SizeSystemImperial", [SchemaOrg::SizeSystemEnumeration])
    SIZE_SYSTEM_METRIC = EnumerationValue.new("SizeSystemMetric", [SchemaOrg::SizeSystemEnumeration])
    VALUES = [SIZE_SYSTEM_IMPERIAL, SIZE_SYSTEM_METRIC].freeze

    def self.values
      VALUES
    end
  end
end
