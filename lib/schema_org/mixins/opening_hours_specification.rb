# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module OpeningHoursSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          closes: {
            schema_name: "closes",
            schema_url: "https://schema.org/closes",
            comment_lines: ["The closing hour of the place or service on the given day(s) of the week."].freeze,
            ranges: ["Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          day_of_week: {
            schema_name: "dayOfWeek",
            schema_url: "https://schema.org/dayOfWeek",
            comment_lines: ["The day of the week for which these opening hours are valid."].freeze,
            ranges: ["DayOfWeek"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          opens: {
            schema_name: "opens",
            schema_url: "https://schema.org/opens",
            comment_lines: ["The opening hour of the place or service on the given day(s) of the week."].freeze,
            ranges: ["Time"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_from: {
            schema_name: "validFrom",
            schema_url: "https://schema.org/validFrom",
            comment_lines: ["The date when the item becomes valid."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          valid_through: {
            schema_name: "validThrough",
            schema_url: "https://schema.org/validThrough",
            comment_lines: ["The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The closing hour of the place or service on the given day(s) of the week.
      def closes
        read_property(:closes)
      end

      # The closing hour of the place or service on the given day(s) of the week.
      def closes=(value)
        write_property(:closes, value)
      end

      # The day of the week for which these opening hours are valid.
      def day_of_week
        read_property(:day_of_week)
      end

      # The day of the week for which these opening hours are valid.
      def day_of_week=(value)
        write_property(:day_of_week, value)
      end

      # The opening hour of the place or service on the given day(s) of the week.
      def opens
        read_property(:opens)
      end

      # The opening hour of the place or service on the given day(s) of the week.
      def opens=(value)
        write_property(:opens, value)
      end

      # The date when the item becomes valid.
      def valid_from
        read_property(:valid_from)
      end

      # The date when the item becomes valid.
      def valid_from=(value)
        write_property(:valid_from, value)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through
        read_property(:valid_through)
      end

      # The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
      def valid_through=(value)
        write_property(:valid_through, value)
      end
    end
  end
end
