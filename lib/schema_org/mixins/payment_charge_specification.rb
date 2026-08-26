module SchemaOrg
  module Mixins
    module PaymentChargeSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          :applies_to_delivery_method => {
            schema_name: "appliesToDeliveryMethod",
            ranges: ["DeliveryMethod"],
          }.freeze,
          :applies_to_payment_method => {
            schema_name: "appliesToPaymentMethod",
            ranges: ["PaymentMethod"],
          }.freeze,
        }.freeze
      end

      def applies_to_delivery_method
        read_property(:applies_to_delivery_method)
      end

      def applies_to_delivery_method=(value)
        write_property(:applies_to_delivery_method, value)
      end

      def applies_to_payment_method
        read_property(:applies_to_payment_method)
      end

      def applies_to_payment_method=(value)
        write_property(:applies_to_payment_method, value)
      end

    end
  end
end
