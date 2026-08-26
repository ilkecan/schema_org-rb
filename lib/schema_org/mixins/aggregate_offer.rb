module SchemaOrg
  module Mixins
    module AggregateOffer
      include Offer

      def self.schema_property_definitions
        {
          :high_price => {
            schema_name: "highPrice",
            ranges: ["Number", "Text"],
          }.freeze,
          :low_price => {
            schema_name: "lowPrice",
            ranges: ["Number", "Text"],
          }.freeze,
          :offer_count => {
            schema_name: "offerCount",
            ranges: ["Integer"],
          }.freeze,
          :offers => {
            schema_name: "offers",
            ranges: ["Demand", "Offer"],
          }.freeze,
        }.freeze
      end

      def high_price
        read_property(:high_price)
      end

      def high_price=(value)
        write_property(:high_price, value)
      end

      def low_price
        read_property(:low_price)
      end

      def low_price=(value)
        write_property(:low_price, value)
      end

      def offer_count
        read_property(:offer_count)
      end

      def offer_count=(value)
        write_property(:offer_count, value)
      end

      def offers
        read_property(:offers)
      end

      def offers=(value)
        write_property(:offers, value)
      end

    end
  end
end
