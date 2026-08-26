module SchemaOrg
  module Mixins
    module OrderAction
      include TradeAction

      def self.schema_property_definitions
        {
          :delivery_method => {
            schema_name: "deliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
        }.freeze
      end

      def delivery_method
        read_property(:delivery_method)
      end

      def delivery_method=(value)
        write_property(:delivery_method, value)
      end

    end
  end
end
