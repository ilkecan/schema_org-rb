# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Report
      include Article

      def self.schema_property_definitions
        {
          report_number: {
            schema_name: "reportNumber",
            schema_url: "https://schema.org/reportNumber",
            comment_lines: ["The number or other unique designator assigned to a Report by the publishing organization."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number or other unique designator assigned to a Report by the publishing organization.
      def report_number
        read_property(:report_number)
      end

      # The number or other unique designator assigned to a Report by the publishing organization.
      def report_number=(value)
        write_property(:report_number, value)
      end
    end
  end
end
