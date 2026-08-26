module SchemaOrg
  module Mixins
    module ReceiveAction
      include TransferAction

      def self.schema_property_definitions
        {
          :delivery_method => {
            schema_name: "deliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :sender => {
            schema_name: "sender",
            ranges: ["Audience", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def delivery_method
        read_property(:delivery_method)
      end

      def delivery_method=(value)
        write_property(:delivery_method, value)
      end

      def sender
        read_property(:sender)
      end

      def sender=(value)
        write_property(:sender, value)
      end

    end
  end
end
