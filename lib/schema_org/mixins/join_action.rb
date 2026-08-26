# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module JoinAction
      include InteractAction

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
