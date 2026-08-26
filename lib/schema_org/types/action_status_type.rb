module SchemaOrg
  # https://schema.org/ActionStatusType
  #
  # The status of an Action.
  class ActionStatusType < Base
    include Mixins::ActionStatusType
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ACTIVE_ACTION_STATUS = EnumerationValue.new("ActiveActionStatus", self, [SchemaOrg::ActionStatusType]).freeze
    COMPLETED_ACTION_STATUS = EnumerationValue.new("CompletedActionStatus", self, [SchemaOrg::ActionStatusType]).freeze
    FAILED_ACTION_STATUS = EnumerationValue.new("FailedActionStatus", self, [SchemaOrg::ActionStatusType]).freeze
    POTENTIAL_ACTION_STATUS = EnumerationValue.new("PotentialActionStatus", self, [SchemaOrg::ActionStatusType]).freeze
    VALUES = [ACTIVE_ACTION_STATUS, COMPLETED_ACTION_STATUS, FAILED_ACTION_STATUS, POTENTIAL_ACTION_STATUS].freeze

    def self.values
      VALUES
    end
  end
end
