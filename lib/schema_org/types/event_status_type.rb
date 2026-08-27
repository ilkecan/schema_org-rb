# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  # https://schema.org/EventStatusType
  #
  # EventStatusType is an enumeration type whose instances represent several states that an Event may be in.
  class EventStatusType < Base
    include Mixins::EventStatusType

    SCHEMA_NAME = "EventStatusType"
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
    EVENT_CANCELLED = EnumerationValue.new("EventCancelled", [SchemaOrg::EventStatusType])
    EVENT_MOVED_ONLINE = EnumerationValue.new("EventMovedOnline", [SchemaOrg::EventStatusType])
    EVENT_POSTPONED = EnumerationValue.new("EventPostponed", [SchemaOrg::EventStatusType])
    EVENT_RESCHEDULED = EnumerationValue.new("EventRescheduled", [SchemaOrg::EventStatusType])
    EVENT_SCHEDULED = EnumerationValue.new("EventScheduled", [SchemaOrg::EventStatusType])
    VALUES = [EVENT_CANCELLED, EVENT_MOVED_ONLINE, EVENT_POSTPONED, EVENT_RESCHEDULED, EVENT_SCHEDULED].freeze

    def self.values
      VALUES
    end
  end
end
