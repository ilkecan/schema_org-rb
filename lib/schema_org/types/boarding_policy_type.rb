# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/BoardingPolicyType
  #
  # A type of boarding policy used by an airline.
  class BoardingPolicyType < Base
    include Mixins::BoardingPolicyType

    SCHEMA_NAME = "BoardingPolicyType"
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
    GROUP_BOARDING_POLICY = EnumerationValue.new("GroupBoardingPolicy", [SchemaOrg::BoardingPolicyType])
    ZONE_BOARDING_POLICY = EnumerationValue.new("ZoneBoardingPolicy", [SchemaOrg::BoardingPolicyType])
    VALUES = [GROUP_BOARDING_POLICY, ZONE_BOARDING_POLICY].freeze

    def self.values
      VALUES
    end
  end
end
