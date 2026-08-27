# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/TierBenefitEnumeration
  #
  # An enumeration of possible benefits as part of a loyalty (members) program.
  class TierBenefitEnumeration < Base
    include Mixins::TierBenefitEnumeration

    SCHEMA_NAME = "TierBenefitEnumeration"
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
    TIER_BENEFIT_LOYALTY_POINTS = EnumerationValue.new("TierBenefitLoyaltyPoints", [SchemaOrg::TierBenefitEnumeration])
    TIER_BENEFIT_LOYALTY_PRICE = EnumerationValue.new("TierBenefitLoyaltyPrice", [SchemaOrg::TierBenefitEnumeration])
    TIER_BENEFIT_LOYALTY_RETURNS = EnumerationValue.new("TierBenefitLoyaltyReturns", [SchemaOrg::TierBenefitEnumeration])
    TIER_BENEFIT_LOYALTY_SHIPPING = EnumerationValue.new("TierBenefitLoyaltyShipping", [SchemaOrg::TierBenefitEnumeration])
    VALUES = [TIER_BENEFIT_LOYALTY_POINTS, TIER_BENEFIT_LOYALTY_PRICE, TIER_BENEFIT_LOYALTY_RETURNS, TIER_BENEFIT_LOYALTY_SHIPPING].freeze

    def self.values
      VALUES
    end
  end
end
