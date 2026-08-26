module SchemaOrg
  module Mixins
    module BuyAction
      include TradeAction

      def self.schema_property_definitions
        {
          :seller => {
            schema_name: "seller",
            ranges: ["Organization", "Person"],
          }.freeze,
          :vendor => {
            schema_name: "vendor",
            ranges: ["Organization", "Person"],
          }.freeze,
          :warranty_promise => {
            schema_name: "warrantyPromise",
            ranges: ["WarrantyPromise"],
          }.freeze,
        }.freeze
      end

      def seller
        read_property(:seller)
      end

      def seller=(value)
        write_property(:seller, value)
      end

      def vendor
        read_property(:vendor)
      end

      def vendor=(value)
        write_property(:vendor, value)
      end

      def warranty_promise
        read_property(:warranty_promise)
      end

      def warranty_promise=(value)
        write_property(:warranty_promise, value)
      end

    end
  end
end
