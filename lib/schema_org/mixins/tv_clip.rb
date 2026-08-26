# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module TVClip
      include Clip

      def self.schema_property_definitions
        {
          part_of_tv_series: {
            schema_name: "partOfTVSeries",
            schema_url: "https://schema.org/partOfTVSeries",
            comment_lines: ["The TV series to which this episode or season belongs."].freeze,
            ranges: ["TVSeries"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "partOfSeries",
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The TV series to which this episode or season belongs.
      # Superseded by `partOfSeries`.
      def part_of_tv_series
        read_property(:part_of_tv_series)
      end

      # The TV series to which this episode or season belongs.
      # Superseded by `partOfSeries`.
      def part_of_tv_series=(value)
        write_property(:part_of_tv_series, value)
      end
    end
  end
end
