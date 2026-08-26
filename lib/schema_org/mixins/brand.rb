module SchemaOrg
  module Mixins
    module Brand
      include Intangible

      def self.schema_property_definitions
        {
          :aggregate_rating => {
            schema_name: "aggregateRating",
            ranges: ["AggregateRating"],
          }.freeze,
          :logo => {
            schema_name: "logo",
            ranges: ["ImageObject", "URL"],
          }.freeze,
          :review => {
            schema_name: "review",
            ranges: ["Review"],
          }.freeze,
          :slogan => {
            schema_name: "slogan",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def aggregate_rating
        read_property(:aggregate_rating)
      end

      def aggregate_rating=(value)
        write_property(:aggregate_rating, value)
      end

      def logo
        read_property(:logo)
      end

      def logo=(value)
        write_property(:logo, value)
      end

      def review
        read_property(:review)
      end

      def review=(value)
        write_property(:review, value)
      end

      def slogan
        read_property(:slogan)
      end

      def slogan=(value)
        write_property(:slogan, value)
      end

    end
  end
end
