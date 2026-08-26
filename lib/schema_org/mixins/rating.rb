module SchemaOrg
  module Mixins
    module Rating
      include Intangible

      def self.schema_property_definitions
        {
          :author => {
            schema_name: "author",
            ranges: ["Organization", "Person"],
          }.freeze,
          :best_rating => {
            schema_name: "bestRating",
            ranges: ["Number", "Text"],
          }.freeze,
          :rating_value => {
            schema_name: "ratingValue",
            ranges: ["Number", "Text"],
          }.freeze,
          :review_aspect => {
            schema_name: "reviewAspect",
            ranges: ["StructuredValue", "Text"],
          }.freeze,
          :worst_rating => {
            schema_name: "worstRating",
            ranges: ["Number", "Text"],
          }.freeze,
        }.freeze
      end

      def author
        read_property(:author)
      end

      def author=(value)
        write_property(:author, value)
      end

      def best_rating
        read_property(:best_rating)
      end

      def best_rating=(value)
        write_property(:best_rating, value)
      end

      def rating_value
        read_property(:rating_value)
      end

      def rating_value=(value)
        write_property(:rating_value, value)
      end

      def review_aspect
        read_property(:review_aspect)
      end

      def review_aspect=(value)
        write_property(:review_aspect, value)
      end

      def worst_rating
        read_property(:worst_rating)
      end

      def worst_rating=(value)
        write_property(:worst_rating, value)
      end

    end
  end
end
