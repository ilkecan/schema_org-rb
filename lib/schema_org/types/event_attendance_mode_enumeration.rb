# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  # https://schema.org/EventAttendanceModeEnumeration
  #
  # An EventAttendanceModeEnumeration value is one of potentially several modes of organising an event, relating to whether it is online or offline.
  class EventAttendanceModeEnumeration < Base
    include Mixins::EventAttendanceModeEnumeration

    SCHEMA_NAME = "EventAttendanceModeEnumeration"
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
    MIXED_EVENT_ATTENDANCE_MODE = EnumerationValue.new("MixedEventAttendanceMode", [SchemaOrg::EventAttendanceModeEnumeration])
    OFFLINE_EVENT_ATTENDANCE_MODE = EnumerationValue.new("OfflineEventAttendanceMode", [SchemaOrg::EventAttendanceModeEnumeration])
    ONLINE_EVENT_ATTENDANCE_MODE = EnumerationValue.new("OnlineEventAttendanceMode", [SchemaOrg::EventAttendanceModeEnumeration])
    VALUES = [MIXED_EVENT_ATTENDANCE_MODE, OFFLINE_EVENT_ATTENDANCE_MODE, ONLINE_EVENT_ATTENDANCE_MODE].freeze

    def self.values
      VALUES
    end
  end
end
