# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/DENonprofitType
  #
  # DENonprofitType: Non-profit organization type originating from Germany in accordance with article 52 of the German fiscal code (Abgabenverordnung or AO).
  class DENonprofitType < Base
    include Mixins::DENonprofitType

    SCHEMA_NAME = "DENonprofitType"
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
    DE_COOPERATIVE_CHARITY = EnumerationValue.new("DECooperativeCharity", [SchemaOrg::DENonprofitType])
    DE_FOUNDATION_CHARITY = EnumerationValue.new("DEFoundationCharity", [SchemaOrg::DENonprofitType])
    DE_JOINT_STOCK_COMPANY_CHARITY = EnumerationValue.new("DEJointStockCompanyCharity", [SchemaOrg::DENonprofitType])
    DE_LIMITED_LIABILITY_CHARITY = EnumerationValue.new("DELimitedLiabilityCharity", [SchemaOrg::DENonprofitType])
    DE_NOT_REGISTERED_ASSOCIATION_CHARITY = EnumerationValue.new("DENotRegisteredAssociationCharity", [SchemaOrg::DENonprofitType])
    DE_PUBLIC_CHARITY = EnumerationValue.new("DEPublicCharity", [SchemaOrg::DENonprofitType])
    DE_REGISTERED_ASSOCIATION_CHARITY = EnumerationValue.new("DERegisteredAssociationCharity", [SchemaOrg::DENonprofitType])
    VALUES = [DE_COOPERATIVE_CHARITY, DE_FOUNDATION_CHARITY, DE_JOINT_STOCK_COMPANY_CHARITY, DE_LIMITED_LIABILITY_CHARITY, DE_NOT_REGISTERED_ASSOCIATION_CHARITY, DE_PUBLIC_CHARITY, DE_REGISTERED_ASSOCIATION_CHARITY].freeze

    def self.values
      VALUES
    end
  end
end
