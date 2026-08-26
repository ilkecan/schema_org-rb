module SchemaOrg
  # https://schema.org/BoardingPolicyType
  #
  # A type of boarding policy used by an airline.
  class BoardingPolicyType < Base
    include Mixins::BoardingPolicyType
    SCHEMA_TYPES = [self, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

    class << self
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
    GROUP_BOARDING_POLICY = EnumerationValue.new("GroupBoardingPolicy", self, [SchemaOrg::BoardingPolicyType]).freeze
    ZONE_BOARDING_POLICY = EnumerationValue.new("ZoneBoardingPolicy", self, [SchemaOrg::BoardingPolicyType]).freeze
    VALUES = [GROUP_BOARDING_POLICY, ZONE_BOARDING_POLICY].freeze

    def self.values
      VALUES
    end
  end
end
