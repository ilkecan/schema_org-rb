# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module PaymentMethod
      include Intangible

      def self.schema_property_definitions
        {
          payment_method_type: {
            schema_name: "paymentMethodType",
            schema_url: "https://schema.org/paymentMethodType",
            comment_lines: ["The type of a payment method."].freeze,
            ranges: ["PaymentMethodType"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The type of a payment method.
      def payment_method_type
        read_property(:payment_method_type)
      end

      # The type of a payment method.
      def payment_method_type=(value)
        write_property(:payment_method_type, value)
      end
    end
  end
end
