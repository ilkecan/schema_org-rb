module SchemaOrg
  module Mixins
    module SendAction
      include TransferAction

      def self.schema_property_definitions
        {
          :delivery_method => {
            schema_name: "deliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :recipient => {
            schema_name: "recipient",
            ranges: ["Audience", "ContactPoint", "Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def delivery_method
        read_property(:delivery_method)
      end

      def delivery_method=(value)
        write_property(:delivery_method, value)
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
