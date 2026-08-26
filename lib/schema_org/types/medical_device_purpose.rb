# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/MedicalDevicePurpose
  #
  # Categories of medical devices, organized by the purpose or intended use of the device.
  class MedicalDevicePurpose < Base
    include Mixins::MedicalDevicePurpose

    SCHEMA_NAME = "MedicalDevicePurpose"
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
    DIAGNOSTIC = EnumerationValue.new("Diagnostic", [SchemaOrg::MedicalDevicePurpose])
    THERAPEUTIC = EnumerationValue.new("Therapeutic", [SchemaOrg::MedicalDevicePurpose])
    VALUES = [DIAGNOSTIC, THERAPEUTIC].freeze

    def self.values
      VALUES
    end
  end
end
