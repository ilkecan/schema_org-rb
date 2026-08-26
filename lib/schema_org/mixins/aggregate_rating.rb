module SchemaOrg
  module Mixins
    module AggregateRating
      include Rating

      def self.schema_property_definitions
        {
          :item_reviewed => {
            schema_name: "itemReviewed",
            ranges: ["Thing"],
          }.freeze,
          :rating_count => {
            schema_name: "ratingCount",
            ranges: ["Integer"],
          }.freeze,
          :review_count => {
            schema_name: "reviewCount",
            ranges: ["Integer"],
          }.freeze,
        }.freeze
      end

      def item_reviewed
        read_property(:item_reviewed)
      end

      def item_reviewed=(value)
        write_property(:item_reviewed, value)
      end

      def rating_count
        read_property(:rating_count)
      end

      def rating_count=(value)
        write_property(:rating_count, value)
      end

      def review_count
        read_property(:review_count)
      end

      def review_count=(value)
        write_property(:review_count, value)
      end

    end
  end
end
