# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/UKNonprofitType
  #
  # UKNonprofitType: Non-profit organization type originating from the United Kingdom.
  class UKNonprofitType < Base
    include Mixins::UKNonprofitType

    SCHEMA_NAME = "UKNonprofitType"
    SCHEMA_TYPES = [self, SchemaOrg::NonprofitType, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    CHARITABLE_INCORPORATED_ORGANIZATION = EnumerationValue.new("CharitableIncorporatedOrganization", [SchemaOrg::UKNonprofitType])
    LIMITED_BY_GUARANTEE_CHARITY = EnumerationValue.new("LimitedByGuaranteeCharity", [SchemaOrg::UKNonprofitType])
    UK_TRUST = EnumerationValue.new("UKTrust", [SchemaOrg::UKNonprofitType])
    UNINCORPORATED_ASSOCIATION_CHARITY = EnumerationValue.new("UnincorporatedAssociationCharity", [SchemaOrg::UKNonprofitType])
    VALUES = [CHARITABLE_INCORPORATED_ORGANIZATION, LIMITED_BY_GUARANTEE_CHARITY, UK_TRUST, UNINCORPORATED_ASSOCIATION_CHARITY].freeze

    def self.values
      VALUES
    end
  end
end
