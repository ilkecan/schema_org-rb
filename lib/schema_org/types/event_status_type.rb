module SchemaOrg
  # https://schema.org/EventStatusType
  #
  # EventStatusType is an enumeration type whose instances represent several states that an Event may be in.
  class EventStatusType < Base
    include Mixins::EventStatusType
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
    EVENT_CANCELLED = EnumerationValue.new("EventCancelled", self, [SchemaOrg::EventStatusType]).freeze
    EVENT_MOVED_ONLINE = EnumerationValue.new("EventMovedOnline", self, [SchemaOrg::EventStatusType]).freeze
    EVENT_POSTPONED = EnumerationValue.new("EventPostponed", self, [SchemaOrg::EventStatusType]).freeze
    EVENT_RESCHEDULED = EnumerationValue.new("EventRescheduled", self, [SchemaOrg::EventStatusType]).freeze
    EVENT_SCHEDULED = EnumerationValue.new("EventScheduled", self, [SchemaOrg::EventStatusType]).freeze
    VALUES = [EVENT_CANCELLED, EVENT_MOVED_ONLINE, EVENT_POSTPONED, EVENT_RESCHEDULED, EVENT_SCHEDULED].freeze

    def self.values
      VALUES
    end
  end
end
