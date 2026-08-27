# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module InformAction
      include CommunicateAction

      def self.schema_property_definitions
        {
          event: {
            schema_name: "event",
            schema_url: "https://schema.org/event",
            comment_lines: ["Upcoming or past event associated with this place, organization, or action."].freeze,
            ranges: ["Event"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "events"
          }.freeze
        }.freeze
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event
        read_property(:event)
      end

      # Upcoming or past event associated with this place, organization, or action.
      # Supersedes `events`.
      def event=(value)
        write_property(:event, value)
      end
    end
  end
end
