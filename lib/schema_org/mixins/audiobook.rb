# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module Audiobook
      include AudioObject
      include Book

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
          read_by: {
            schema_name: "readBy",
            schema_url: "https://schema.org/readBy",
            comment_lines: ["A person who reads (performs) the audiobook."].freeze,
            ranges: ["Person"].freeze,
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

      # A person who reads (performs) the audiobook.
      def read_by
        read_property(:read_by)
      end

      # A person who reads (performs) the audiobook.
      def read_by=(value)
        write_property(:read_by, value)
      end
    end
  end
end
