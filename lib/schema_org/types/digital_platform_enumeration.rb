# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/DigitalPlatformEnumeration
  #
  # Enumerates some common technology platforms, for use with properties such as [[actionPlatform]]. It is not supposed to be comprehensive - when a suitable code is not enumerated here, textual or URL values can be used instead. These codes are at a fairly high level and do not deal with versioning and other nuance. Additional codes can be suggested [in github](https://github.com/schemaorg/schemaorg/issues/3057).
  class DigitalPlatformEnumeration < Base
    include Mixins::DigitalPlatformEnumeration

    SCHEMA_NAME = "DigitalPlatformEnumeration"
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
    ANDROID_PLATFORM = EnumerationValue.new("AndroidPlatform", [SchemaOrg::DigitalPlatformEnumeration])
    DESKTOP_WEB_PLATFORM = EnumerationValue.new("DesktopWebPlatform", [SchemaOrg::DigitalPlatformEnumeration])
    GENERIC_WEB_PLATFORM = EnumerationValue.new("GenericWebPlatform", [SchemaOrg::DigitalPlatformEnumeration])
    IOS_PLATFORM = EnumerationValue.new("IOSPlatform", [SchemaOrg::DigitalPlatformEnumeration])
    MOBILE_WEB_PLATFORM = EnumerationValue.new("MobileWebPlatform", [SchemaOrg::DigitalPlatformEnumeration])
    VALUES = [ANDROID_PLATFORM, DESKTOP_WEB_PLATFORM, GENERIC_WEB_PLATFORM, IOS_PLATFORM, MOBILE_WEB_PLATFORM].freeze

    def self.values
      VALUES
    end
  end
end
