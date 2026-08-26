# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/GovernmentBenefitsType
  #
  # GovernmentBenefitsType enumerates several kinds of government benefits to support the COVID-19 situation. Note that this structure may not capture all benefits offered.
  class GovernmentBenefitsType < Base
    include Mixins::GovernmentBenefitsType

    SCHEMA_NAME = "GovernmentBenefitsType"
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
    BASIC_INCOME = EnumerationValue.new("BasicIncome", [SchemaOrg::GovernmentBenefitsType])
    BUSINESS_SUPPORT = EnumerationValue.new("BusinessSupport", [SchemaOrg::GovernmentBenefitsType])
    DISABILITY_SUPPORT = EnumerationValue.new("DisabilitySupport", [SchemaOrg::GovernmentBenefitsType])
    HEALTH_CARE = EnumerationValue.new("HealthCare", [SchemaOrg::GovernmentBenefitsType])
    ONE_TIME_PAYMENTS = EnumerationValue.new("OneTimePayments", [SchemaOrg::GovernmentBenefitsType])
    PAID_LEAVE = EnumerationValue.new("PaidLeave", [SchemaOrg::GovernmentBenefitsType])
    PARENTAL_SUPPORT = EnumerationValue.new("ParentalSupport", [SchemaOrg::GovernmentBenefitsType])
    UNEMPLOYMENT_SUPPORT = EnumerationValue.new("UnemploymentSupport", [SchemaOrg::GovernmentBenefitsType])
    VALUES = [BASIC_INCOME, BUSINESS_SUPPORT, DISABILITY_SUPPORT, HEALTH_CARE, ONE_TIME_PAYMENTS, PAID_LEAVE, PARENTAL_SUPPORT, UNEMPLOYMENT_SUPPORT].freeze

    def self.values
      VALUES
    end
  end
end
