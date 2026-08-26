module SchemaOrg
  module Mixins
    module DataFeed
      include Dataset

      def self.schema_property_definitions
        {
          :data_feed_element => {
            schema_name: "dataFeedElement",
            ranges: ["DataFeedItem", "Text", "Thing"],
          }.freeze,
        }.freeze
      end

      def data_feed_element
        read_property(:data_feed_element)
      end

      def data_feed_element=(value)
        write_property(:data_feed_element, value)
      end

    end
  end
end
