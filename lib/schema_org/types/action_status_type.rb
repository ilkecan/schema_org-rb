# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/ActionStatusType
  #
  # The status of an Action.
  class ActionStatusType < Base
    include Mixins::ActionStatusType

    SCHEMA_NAME = "ActionStatusType"
    SCHEMA_TYPES = [self, SchemaOrg::StatusEnumeration, SchemaOrg::Enumeration, SchemaOrg::Intangible, SchemaOrg::Thing].freeze

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
    ACTIVE_ACTION_STATUS = EnumerationValue.new("ActiveActionStatus", [SchemaOrg::ActionStatusType])
    COMPLETED_ACTION_STATUS = EnumerationValue.new("CompletedActionStatus", [SchemaOrg::ActionStatusType])
    FAILED_ACTION_STATUS = EnumerationValue.new("FailedActionStatus", [SchemaOrg::ActionStatusType])
    POTENTIAL_ACTION_STATUS = EnumerationValue.new("PotentialActionStatus", [SchemaOrg::ActionStatusType])
    VALUES = [ACTIVE_ACTION_STATUS, COMPLETED_ACTION_STATUS, FAILED_ACTION_STATUS, POTENTIAL_ACTION_STATUS].freeze

    def self.values
      VALUES
    end
  end
end
