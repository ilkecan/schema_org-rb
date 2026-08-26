# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TravelAction
      include MoveAction

      def self.schema_property_definitions
        {
          distance: {
            schema_name: "distance",
            schema_url: "https://schema.org/distance",
            comment_lines: ["The distance travelled, e.g. exercising or travelling."].freeze,
            ranges: ["Distance"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The distance travelled, e.g. exercising or travelling.
      def distance
        read_property(:distance)
      end

      # The distance travelled, e.g. exercising or travelling.
      def distance=(value)
        write_property(:distance, value)
      end
    end
  end
end
