# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PlanAction
      include OrganizeAction

      def self.schema_property_definitions
        {
          scheduled_time: {
            schema_name: "scheduledTime",
            schema_url: "https://schema.org/scheduledTime",
            comment_lines: ["The time the object is scheduled to."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The time the object is scheduled to.
      def scheduled_time
        read_property(:scheduled_time)
      end

      # The time the object is scheduled to.
      def scheduled_time=(value)
        write_property(:scheduled_time, value)
      end
    end
  end
end
