# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Schedule
      include Intangible

      def self.schema_property_definitions
        {
          by_day: {
            schema_name: "byDay",
            schema_url: "https://schema.org/byDay",
            comment_lines: ["Defines the day(s) of the week on which a recurring [[Event]] takes place. May be specified using either [[DayOfWeek]], or alternatively [[Text]] conforming to iCal's syntax for byDay recurrence rules."].freeze,
            ranges: ["DayOfWeek", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          by_month: {
            schema_name: "byMonth",
            schema_url: "https://schema.org/byMonth",
            comment_lines: ["Defines the month(s) of the year on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-12. January is 1."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          by_month_day: {
            schema_name: "byMonthDay",
            schema_url: "https://schema.org/byMonthDay",
            comment_lines: ["Defines the day(s) of the month on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-31."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          by_month_week: {
            schema_name: "byMonthWeek",
            schema_url: "https://schema.org/byMonthWeek",
            comment_lines: ["Defines the week(s) of the month on which a recurring Event takes place. Specified as an Integer between 1-5. For clarity, byMonthWeek is best used in conjunction with byDay to indicate concepts like the first and third Mondays of a month."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          duration: {
            schema_name: "duration",
            schema_url: "https://schema.org/duration",
            comment_lines: ["The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601)."].freeze,
            ranges: ["Duration", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          end_time: {
            schema_name: "endTime",
            schema_url: "https://schema.org/endTime",
            comment_lines: ["The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          except_date: {
            schema_name: "exceptDate",
            schema_url: "https://schema.org/exceptDate",
            comment_lines: ["Defines a [[Date]] or [[DateTime]] during which a scheduled [[Event]] will not take place. The property allows exceptions to", "      a [[Schedule]] to be specified. If an exception is specified as a [[DateTime]] then only the event that would have started at that specific date and time", "      should be excluded from the schedule. If an exception is specified as a [[Date]] then any event that is scheduled for that 24 hour period should be", "      excluded from the schedule. This allows a whole day to be excluded from the schedule without having to itemise every scheduled event."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          repeat_count: {
            schema_name: "repeatCount",
            schema_url: "https://schema.org/repeatCount",
            comment_lines: ["Defines the number of times a recurring [[Event]] will take place."].freeze,
            ranges: ["Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          repeat_frequency: {
            schema_name: "repeatFrequency",
            schema_url: "https://schema.org/repeatFrequency",
            comment_lines: ["Defines the frequency at which [[Event]]s will occur according to a schedule [[Schedule]]. The intervals between", "      events should be defined as a [[Duration]] of time."].freeze,
            ranges: ["Duration", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          schedule_timezone: {
            schema_name: "scheduleTimezone",
            schema_url: "https://schema.org/scheduleTimezone",
            comment_lines: ["Indicates the timezone for which the time(s) indicated in the [[Schedule]] are given. The value provided should be among those listed in the IANA Time Zone Database."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_time: {
            schema_name: "startTime",
            schema_url: "https://schema.org/startTime",
            comment_lines: ["The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\\n\\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions."].freeze,
            ranges: ["DateTime", "Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Defines the day(s) of the week on which a recurring [[Event]] takes place. May be specified using either [[DayOfWeek]], or alternatively [[Text]] conforming to iCal's syntax for byDay recurrence rules.
      def by_day
        read_property(:by_day)
      end

      # Defines the day(s) of the week on which a recurring [[Event]] takes place. May be specified using either [[DayOfWeek]], or alternatively [[Text]] conforming to iCal's syntax for byDay recurrence rules.
      def by_day=(value)
        write_property(:by_day, value)
      end

      # Defines the month(s) of the year on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-12. January is 1.
      def by_month
        read_property(:by_month)
      end

      # Defines the month(s) of the year on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-12. January is 1.
      def by_month=(value)
        write_property(:by_month, value)
      end

      # Defines the day(s) of the month on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-31.
      def by_month_day
        read_property(:by_month_day)
      end

      # Defines the day(s) of the month on which a recurring [[Event]] takes place. Specified as an [[Integer]] between 1-31.
      def by_month_day=(value)
        write_property(:by_month_day, value)
      end

      # Defines the week(s) of the month on which a recurring Event takes place. Specified as an Integer between 1-5. For clarity, byMonthWeek is best used in conjunction with byDay to indicate concepts like the first and third Mondays of a month.
      def by_month_week
        read_property(:by_month_week)
      end

      # Defines the week(s) of the month on which a recurring Event takes place. Specified as an Integer between 1-5. For clarity, byMonthWeek is best used in conjunction with byDay to indicate concepts like the first and third Mondays of a month.
      def by_month_week=(value)
        write_property(:by_month_week, value)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time
        read_property(:end_time)
      end

      # The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. E.g. John wrote a book from January to *December*. For media, including audio and video, it's the time offset of the end of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def end_time=(value)
        write_property(:end_time, value)
      end

      # Defines a [[Date]] or [[DateTime]] during which a scheduled [[Event]] will not take place. The property allows exceptions to
      #       a [[Schedule]] to be specified. If an exception is specified as a [[DateTime]] then only the event that would have started at that specific date and time
      #       should be excluded from the schedule. If an exception is specified as a [[Date]] then any event that is scheduled for that 24 hour period should be
      #       excluded from the schedule. This allows a whole day to be excluded from the schedule without having to itemise every scheduled event.
      def except_date
        read_property(:except_date)
      end

      # Defines a [[Date]] or [[DateTime]] during which a scheduled [[Event]] will not take place. The property allows exceptions to
      #       a [[Schedule]] to be specified. If an exception is specified as a [[DateTime]] then only the event that would have started at that specific date and time
      #       should be excluded from the schedule. If an exception is specified as a [[Date]] then any event that is scheduled for that 24 hour period should be
      #       excluded from the schedule. This allows a whole day to be excluded from the schedule without having to itemise every scheduled event.
      def except_date=(value)
        write_property(:except_date, value)
      end

      # Defines the number of times a recurring [[Event]] will take place.
      def repeat_count
        read_property(:repeat_count)
      end

      # Defines the number of times a recurring [[Event]] will take place.
      def repeat_count=(value)
        write_property(:repeat_count, value)
      end

      # Defines the frequency at which [[Event]]s will occur according to a schedule [[Schedule]]. The intervals between
      #       events should be defined as a [[Duration]] of time.
      def repeat_frequency
        read_property(:repeat_frequency)
      end

      # Defines the frequency at which [[Event]]s will occur according to a schedule [[Schedule]]. The intervals between
      #       events should be defined as a [[Duration]] of time.
      def repeat_frequency=(value)
        write_property(:repeat_frequency, value)
      end

      # Indicates the timezone for which the time(s) indicated in the [[Schedule]] are given. The value provided should be among those listed in the IANA Time Zone Database.
      def schedule_timezone
        read_property(:schedule_timezone)
      end

      # Indicates the timezone for which the time(s) indicated in the [[Schedule]] are given. The value provided should be among those listed in the IANA Time Zone Database.
      def schedule_timezone=(value)
        write_property(:schedule_timezone, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time
        read_property(:start_time)
      end

      # The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. E.g. John wrote a book from *January* to December. For media, including audio and video, it's the time offset of the start of a clip within a larger file.\n\nNote that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
      def start_time=(value)
        write_property(:start_time, value)
      end
    end
  end
end
