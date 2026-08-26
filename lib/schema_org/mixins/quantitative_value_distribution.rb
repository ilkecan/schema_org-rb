# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module QuantitativeValueDistribution
      include StructuredValue

      def self.schema_property_definitions
        {
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
          median: {
            schema_name: "median",
            schema_url: "https://schema.org/median",
            comment_lines: ["The median value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          percentile10: {
            schema_name: "percentile10",
            schema_url: "https://schema.org/percentile10",
            comment_lines: ["The 10th percentile value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          percentile25: {
            schema_name: "percentile25",
            schema_url: "https://schema.org/percentile25",
            comment_lines: ["The 25th percentile value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          percentile75: {
            schema_name: "percentile75",
            schema_url: "https://schema.org/percentile75",
            comment_lines: ["The 75th percentile value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          percentile90: {
            schema_name: "percentile90",
            schema_url: "https://schema.org/percentile90",
            comment_lines: ["The 90th percentile value."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration
        read_property(:duration)
      end

      # The duration of the item (movie, audio recording, event, etc.) in [ISO 8601 duration format](http://en.wikipedia.org/wiki/ISO_8601).
      def duration=(value)
        write_property(:duration, value)
      end

      # The median value.
      def median
        read_property(:median)
      end

      # The median value.
      def median=(value)
        write_property(:median, value)
      end

      # The 10th percentile value.
      def percentile10
        read_property(:percentile10)
      end

      # The 10th percentile value.
      def percentile10=(value)
        write_property(:percentile10, value)
      end

      # The 25th percentile value.
      def percentile25
        read_property(:percentile25)
      end

      # The 25th percentile value.
      def percentile25=(value)
        write_property(:percentile25, value)
      end

      # The 75th percentile value.
      def percentile75
        read_property(:percentile75)
      end

      # The 75th percentile value.
      def percentile75=(value)
        write_property(:percentile75, value)
      end

      # The 90th percentile value.
      def percentile90
        read_property(:percentile90)
      end

      # The 90th percentile value.
      def percentile90=(value)
        write_property(:percentile90, value)
      end
    end
  end
end
