# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module PlayAction
      include Action

      def self.schema_property_definitions
        {
          audience: {
            schema_name: "audience",
            schema_url: "https://schema.org/audience",
            comment_lines: ["An intended audience, i.e. a group for whom something was created."].freeze,
            ranges: ["Audience"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "serviceAudience"
          }.freeze,
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

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience
        read_property(:audience)
      end

      # An intended audience, i.e. a group for whom something was created.
      # Supersedes `serviceAudience`.
      def audience=(value)
        write_property(:audience, value)
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
