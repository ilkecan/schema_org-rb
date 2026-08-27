# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module PaymentChargeSpecification
      include PriceSpecification

      def self.schema_property_definitions
        {
          applies_to_delivery_method: {
            schema_name: "appliesToDeliveryMethod",
            schema_url: "https://schema.org/appliesToDeliveryMethod",
            comment_lines: ["The delivery method(s) to which the delivery charge or payment charge specification applies."].freeze,
            ranges: ["DeliveryMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          applies_to_payment_method: {
            schema_name: "appliesToPaymentMethod",
            schema_url: "https://schema.org/appliesToPaymentMethod",
            comment_lines: ["The payment method(s) to which the payment charge specification applies."].freeze,
            ranges: ["PaymentMethod"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The delivery method(s) to which the delivery charge or payment charge specification applies.
      def applies_to_delivery_method
        read_property(:applies_to_delivery_method)
      end

      # The delivery method(s) to which the delivery charge or payment charge specification applies.
      def applies_to_delivery_method=(value)
        write_property(:applies_to_delivery_method, value)
      end

      # The payment method(s) to which the payment charge specification applies.
      def applies_to_payment_method
        read_property(:applies_to_payment_method)
      end

      # The payment method(s) to which the payment charge specification applies.
      def applies_to_payment_method=(value)
        write_property(:applies_to_payment_method, value)
      end
    end
  end
end
