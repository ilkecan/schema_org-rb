# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module InstantaneousEvent
      include StructuredValue

      def self.schema_property_definitions
        {
          data: {
            schema_name: "data",
            schema_url: "https://schema.org/data",
            comment_lines: ["Data associated with the event, like for instance a log message."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          source: {
            schema_name: "source",
            schema_url: "https://schema.org/source",
            comment_lines: ["The source or cause of the event."].freeze,
            ranges: ["Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          timestamp: {
            schema_name: "timestamp",
            schema_url: "https://schema.org/timestamp",
            comment_lines: ["The instant the event occured."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Data associated with the event, like for instance a log message.
      def data
        read_property(:data)
      end

      # Data associated with the event, like for instance a log message.
      def data=(value)
        write_property(:data, value)
      end

      # The source or cause of the event.
      def source
        read_property(:source)
      end

      # The source or cause of the event.
      def source=(value)
        write_property(:source, value)
      end

      # The instant the event occured.
      def timestamp
        read_property(:timestamp)
      end

      # The instant the event occured.
      def timestamp=(value)
        write_property(:timestamp, value)
      end
    end
  end
end
