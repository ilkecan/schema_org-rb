# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module DataFeed
      include Dataset

      def self.schema_property_definitions
        {
          data_feed_element: {
            schema_name: "dataFeedElement",
            schema_url: "https://schema.org/dataFeedElement",
            comment_lines: ["An item within a data feed. Data feeds may have many elements."].freeze,
            ranges: ["DataFeedItem", "Text", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # An item within a data feed. Data feeds may have many elements.
      def data_feed_element
        read_property(:data_feed_element)
      end

      # An item within a data feed. Data feeds may have many elements.
      def data_feed_element=(value)
        write_property(:data_feed_element, value)
      end
    end
  end
end
