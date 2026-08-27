# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/ITNonprofitType
  #
  # ITNonprofitType: Non-profit organization type originating from Italy.
  class ITNonprofitType < Base
    include Mixins::ITNonprofitType

    SCHEMA_NAME = "ITNonprofitType"
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
    IT_COOPERATIVE_CHARITY = EnumerationValue.new("ITCooperativeCharity", [SchemaOrg::ITNonprofitType])
    IT_MUTUAL_AID_CHARITY = EnumerationValue.new("ITMutualAidCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_COMPANY_CHARITY = EnumerationValue.new("ITSocialCompanyCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_PROMOTION_CHARITY = EnumerationValue.new("ITSocialPromotionCharity", [SchemaOrg::ITNonprofitType])
    IT_SPORT_COMPANY_CHARITY = EnumerationValue.new("ITSportCompanyCharity", [SchemaOrg::ITNonprofitType])
    IT_VOLUNTEER_ASSOCIATION_CHARITY = EnumerationValue.new("ITVolunteerAssociationCharity", [SchemaOrg::ITNonprofitType])
    VALUES = [IT_COOPERATIVE_CHARITY, IT_MUTUAL_AID_CHARITY, IT_SOCIAL_COMPANY_CHARITY, IT_SOCIAL_PROMOTION_CHARITY, IT_SPORT_COMPANY_CHARITY, IT_VOLUNTEER_ASSOCIATION_CHARITY].freeze

    def self.values
      VALUES
    end
  end
end
