module SchemaOrg
  module Mixins
    module SellAction
      include TradeAction

      def self.schema_property_definitions
        {
          :buyer => {
            schema_name: "buyer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :warranty_promise => {
            schema_name: "warrantyPromise",
            ranges: ["WarrantyPromise"],
          }.freeze,
        }.freeze
      end

      def buyer
        read_property(:buyer)
      end

      def buyer=(value)
        write_property(:buyer, value)
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
