# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PublicationEvent
      include Event

      def self.schema_property_definitions
        {
          free: {
            schema_name: "free",
            schema_url: "https://schema.org/free",
            comment_lines: ["A flag to signal that the item, event, or place is accessible for free."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "isAccessibleForFree",
            supersedes: nil
          }.freeze,
          published_by: {
            schema_name: "publishedBy",
            schema_url: "https://schema.org/publishedBy",
            comment_lines: ["An agent associated with the publication event."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          published_on: {
            schema_name: "publishedOn",
            schema_url: "https://schema.org/publishedOn",
            comment_lines: ["A broadcast service associated with the publication event."].freeze,
            ranges: ["BroadcastService"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Superseded by `isAccessibleForFree`.
      def free
        read_property(:free)
      end

      # A flag to signal that the item, event, or place is accessible for free.
      # Superseded by `isAccessibleForFree`.
      def free=(value)
        write_property(:free, value)
      end

      # An agent associated with the publication event.
      def published_by
        read_property(:published_by)
      end

      # An agent associated with the publication event.
      def published_by=(value)
        write_property(:published_by, value)
      end

      # A broadcast service associated with the publication event.
      def published_on
        read_property(:published_on)
      end

      # A broadcast service associated with the publication event.
      def published_on=(value)
        write_property(:published_on, value)
      end
    end
  end
end
