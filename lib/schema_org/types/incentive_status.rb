# frozen_string_literal: true

module SchemaOrg
  # https://schema.org/IncentiveStatus
  #
  # Enumerates a status for an incentive, such as whether it is active.
  class IncentiveStatus < Base
    include Mixins::IncentiveStatus

    SCHEMA_NAME = "IncentiveStatus"
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
    INCENTIVE_STATUS_ACTIVE = EnumerationValue.new("IncentiveStatusActive", [SchemaOrg::IncentiveStatus])
    INCENTIVE_STATUS_IN_DEVELOPMENT = EnumerationValue.new("IncentiveStatusInDevelopment", [SchemaOrg::IncentiveStatus])
    INCENTIVE_STATUS_ON_HOLD = EnumerationValue.new("IncentiveStatusOnHold", [SchemaOrg::IncentiveStatus])
    INCENTIVE_STATUS_RETIRED = EnumerationValue.new("IncentiveStatusRetired", [SchemaOrg::IncentiveStatus])
    VALUES = [INCENTIVE_STATUS_ACTIVE, INCENTIVE_STATUS_IN_DEVELOPMENT, INCENTIVE_STATUS_ON_HOLD, INCENTIVE_STATUS_RETIRED].freeze

    def self.values
      VALUES
    end
  end
end
