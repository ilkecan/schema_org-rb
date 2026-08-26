module SchemaOrg
  module Mixins
    module Review
      include CreativeWork

      def self.schema_property_definitions
        {
          :item_reviewed => {
            schema_name: "itemReviewed",
            ranges: ["Thing"],
          }.freeze,
          :review_aspect => {
            schema_name: "reviewAspect",
            ranges: ["StructuredValue", "Text"],
          }.freeze,
          :review_body => {
            schema_name: "reviewBody",
            ranges: ["Text"],
          }.freeze,
          :review_rating => {
            schema_name: "reviewRating",
            ranges: ["Rating"],
          }.freeze,
        }.freeze
      end

      def item_reviewed
        read_property(:item_reviewed)
      end

      def item_reviewed=(value)
        write_property(:item_reviewed, value)
      end

      def review_aspect
        read_property(:review_aspect)
      end

      def review_aspect=(value)
        write_property(:review_aspect, value)
      end

      def review_body
        read_property(:review_body)
      end

      def review_body=(value)
        write_property(:review_body, value)
      end

      def review_rating
        read_property(:review_rating)
      end

      def review_rating=(value)
        write_property(:review_rating, value)
      end

    end
  end
end
