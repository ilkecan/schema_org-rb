# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/CertificationStatusEnumeration
  #
  # Enumerates the different statuses of a Certification (Active and Inactive).
  class CertificationStatusEnumeration < Base
    include Mixins::CertificationStatusEnumeration

    SCHEMA_NAME = "CertificationStatusEnumeration"
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
    CERTIFICATION_ACTIVE = EnumerationValue.new("CertificationActive", [SchemaOrg::CertificationStatusEnumeration])
    CERTIFICATION_INACTIVE = EnumerationValue.new("CertificationInactive", [SchemaOrg::CertificationStatusEnumeration])
    VALUES = [CERTIFICATION_ACTIVE, CERTIFICATION_INACTIVE].freeze

    def self.values
      VALUES
    end
  end
end
