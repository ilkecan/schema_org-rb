module SchemaOrg
  module Mixins
    module DonateAction
      include TransferAction

      def self.schema_property_definitions
        {
          :price => {
            schema_name: "price",
            ranges: ["Number", "Text"],
          }.freeze,
          :price_currency => {
            schema_name: "priceCurrency",
            ranges: ["Text"],
          }.freeze,
          :price_specification => {
            schema_name: "priceSpecification",
            ranges: ["PriceSpecification"],
          }.freeze,
          :recipient => {
            schema_name: "recipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def price
        read_property(:price)
      end

      def price=(value)
        write_property(:price, value)
      end

      def price_currency
        read_property(:price_currency)
      end

      def price_currency=(value)
        write_property(:price_currency, value)
      end

      def price_specification
        read_property(:price_specification)
      end

      def price_specification=(value)
        write_property(:price_specification, value)
      end

      def recipient
        read_property(:recipient)
      end

      def recipient=(value)
        write_property(:recipient, value)
      end

    end
  end
end
