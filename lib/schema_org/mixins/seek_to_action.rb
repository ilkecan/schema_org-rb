# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module SeekToAction
      include Action

      def self.schema_property_definitions
        {
          start_offset: {
            schema_name: "startOffset",
            schema_url: "https://schema.org/startOffset",
            comment_lines: ["The start time of the clip expressed as the number of seconds from the beginning of the work."].freeze,
            ranges: ["HyperTocEntry", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The start time of the clip expressed as the number of seconds from the beginning of the work.
      def start_offset
        read_property(:start_offset)
      end

      # The start time of the clip expressed as the number of seconds from the beginning of the work.
      def start_offset=(value)
        write_property(:start_offset, value)
      end
    end
  end
end
