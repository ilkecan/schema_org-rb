module SchemaOrg
  module Mixins
    module PriceSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          :eligible_quantity => {
            schema_name: "eligibleQuantity",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :eligible_transaction_volume => {
            schema_name: "eligibleTransactionVolume",
            ranges: ["PriceSpecification"],
          }.freeze,
          :max_price => {
            schema_name: "maxPrice",
            ranges: ["Number"],
          }.freeze,
          :min_price => {
            schema_name: "minPrice",
            ranges: ["Number"],
          }.freeze,
          :price => {
            schema_name: "price",
            ranges: ["Number", "Text"],
          }.freeze,
          :price_currency => {
            schema_name: "priceCurrency",
            ranges: ["Text"],
          }.freeze,
          :valid_from => {
            schema_name: "validFrom",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :valid_through => {
            schema_name: "validThrough",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :value_added_tax_included => {
            schema_name: "valueAddedTaxIncluded",
            ranges: ["Boolean"],
          }.freeze,
        }.freeze
      end

      def eligible_quantity
        read_property(:eligible_quantity)
      end

      def eligible_quantity=(value)
        write_property(:eligible_quantity, value)
      end

      def eligible_transaction_volume
        read_property(:eligible_transaction_volume)
      end

      def eligible_transaction_volume=(value)
        write_property(:eligible_transaction_volume, value)
      end

      def max_price
        read_property(:max_price)
      end

      def max_price=(value)
        write_property(:max_price, value)
      end

      def min_price
        read_property(:min_price)
      end

      def min_price=(value)
        write_property(:min_price, value)
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

      def valid_from
        read_property(:valid_from)
      end

      def valid_from=(value)
        write_property(:valid_from, value)
      end

      def valid_through
        read_property(:valid_through)
      end

      def valid_through=(value)
        write_property(:valid_through, value)
      end

      def value_added_tax_included
        read_property(:value_added_tax_included)
      end

      def value_added_tax_included=(value)
        write_property(:value_added_tax_included, value)
      end

    end
  end
end
