# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/ITNonprofitType
  #
  # ITNonprofitType: Non-profit organization type originating from Italy. Most categories are drawn from the Italian Third Sector Code (Legislative Decree No. 117 of 3 July 2017), although some Italian non-profit entities, such as amateur sports entities, are primarily governed by other legislation.
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
    IT_AMATEUR_SPORTS_CLUB_CHARITY = EnumerationValue.new("ITAmateurSportsClubCharity", [SchemaOrg::ITNonprofitType])
    IT_ASSOCIATIVE_NETWORK_CHARITY = EnumerationValue.new("ITAssociativeNetworkCharity", [SchemaOrg::ITNonprofitType])
    IT_COOPERATIVE_CHARITY = EnumerationValue.new("ITCooperativeCharity", [SchemaOrg::ITNonprofitType])
    IT_MUTUAL_AID_CHARITY = EnumerationValue.new("ITMutualAidCharity", [SchemaOrg::ITNonprofitType])
    IT_OTHER_THIRD_SECTOR_ENTITY_CHARITY = EnumerationValue.new("ITOtherThirdSectorEntityCharity", [SchemaOrg::ITNonprofitType])
    IT_PHILANTHROPIC_ENTITY_CHARITY = EnumerationValue.new("ITPhilanthropicEntityCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_COMPANY_CHARITY = EnumerationValue.new("ITSocialCompanyCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_COOPERATIVE_CHARITY = EnumerationValue.new("ITSocialCooperativeCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_ENTERPRISE_CHARITY = EnumerationValue.new("ITSocialEnterpriseCharity", [SchemaOrg::ITNonprofitType])
    IT_SOCIAL_PROMOTION_CHARITY = EnumerationValue.new("ITSocialPromotionCharity", [SchemaOrg::ITNonprofitType])
    IT_SPORT_COMPANY_CHARITY = EnumerationValue.new("ITSportCompanyCharity", [SchemaOrg::ITNonprofitType])
    IT_VOLUNTEER_ASSOCIATION_CHARITY = EnumerationValue.new("ITVolunteerAssociationCharity", [SchemaOrg::ITNonprofitType])
    VALUES = [IT_AMATEUR_SPORTS_CLUB_CHARITY, IT_ASSOCIATIVE_NETWORK_CHARITY, IT_COOPERATIVE_CHARITY, IT_MUTUAL_AID_CHARITY, IT_OTHER_THIRD_SECTOR_ENTITY_CHARITY, IT_PHILANTHROPIC_ENTITY_CHARITY, IT_SOCIAL_COMPANY_CHARITY, IT_SOCIAL_COOPERATIVE_CHARITY, IT_SOCIAL_ENTERPRISE_CHARITY, IT_SOCIAL_PROMOTION_CHARITY, IT_SPORT_COMPANY_CHARITY, IT_VOLUNTEER_ASSOCIATION_CHARITY].freeze

    def self.values
      VALUES
    end
  end
end
