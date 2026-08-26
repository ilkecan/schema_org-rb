# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MerchantReturnPolicySeasonalOverride
      include Intangible

      def self.schema_property_definitions
        {
          end_date: {
            schema_name: "endDate",
            schema_url: "https://schema.org/endDate",
            comment_lines: ["The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          merchant_return_days: {
            schema_name: "merchantReturnDays",
            schema_url: "https://schema.org/merchantReturnDays",
            comment_lines: ["Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]]."].freeze,
            ranges: ["Date", "DateTime", "Integer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "productReturnDays"
          }.freeze,
          refund_type: {
            schema_name: "refundType",
            schema_url: "https://schema.org/refundType",
            comment_lines: ["A refund type, from an enumerated list."].freeze,
            ranges: ["RefundTypeEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          restocking_fee: {
            schema_name: "restockingFee",
            schema_url: "https://schema.org/restockingFee",
            comment_lines: ["Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_fees: {
            schema_name: "returnFees",
            schema_url: "https://schema.org/returnFees",
            comment_lines: ["The type of return fees for purchased products (for any return reason)."].freeze,
            ranges: ["ReturnFeesEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_method: {
            schema_name: "returnMethod",
            schema_url: "https://schema.org/returnMethod",
            comment_lines: ["The type of return method offered, specified from an enumeration."].freeze,
            ranges: ["ReturnMethodEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_policy_category: {
            schema_name: "returnPolicyCategory",
            schema_url: "https://schema.org/returnPolicyCategory",
            comment_lines: ["Specifies an applicable return policy (from an enumeration)."].freeze,
            ranges: ["MerchantReturnEnumeration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          return_shipping_fees_amount: {
            schema_name: "returnShippingFeesAmount",
            schema_url: "https://schema.org/returnShippingFeesAmount",
            comment_lines: ["Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]]."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          start_date: {
            schema_name: "startDate",
            schema_url: "https://schema.org/startDate",
            comment_lines: ["The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601))."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date
        read_property(:end_date)
      end

      # The end date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def end_date=(value)
        write_property(:end_date, value)
      end

      # Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]].
      # Supersedes `productReturnDays`.
      def merchant_return_days
        read_property(:merchant_return_days)
      end

      # Specifies either a fixed return date or the number of days (from the delivery date) that a product can be returned. Used when the [[returnPolicyCategory]] property is specified as [[MerchantReturnFiniteReturnWindow]].
      # Supersedes `productReturnDays`.
      def merchant_return_days=(value)
        write_property(:merchant_return_days, value)
      end

      # A refund type, from an enumerated list.
      def refund_type
        read_property(:refund_type)
      end

      # A refund type, from an enumerated list.
      def refund_type=(value)
        write_property(:refund_type, value)
      end

      # Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer.
      def restocking_fee
        read_property(:restocking_fee)
      end

      # Use [[MonetaryAmount]] to specify a fixed restocking fee for product returns, or use [[Number]] to specify a percentage of the product price paid by the customer.
      def restocking_fee=(value)
        write_property(:restocking_fee, value)
      end

      # The type of return fees for purchased products (for any return reason).
      def return_fees
        read_property(:return_fees)
      end

      # The type of return fees for purchased products (for any return reason).
      def return_fees=(value)
        write_property(:return_fees, value)
      end

      # The type of return method offered, specified from an enumeration.
      def return_method
        read_property(:return_method)
      end

      # The type of return method offered, specified from an enumeration.
      def return_method=(value)
        write_property(:return_method, value)
      end

      # Specifies an applicable return policy (from an enumeration).
      def return_policy_category
        read_property(:return_policy_category)
      end

      # Specifies an applicable return policy (from an enumeration).
      def return_policy_category=(value)
        write_property(:return_policy_category, value)
      end

      # Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]].
      def return_shipping_fees_amount
        read_property(:return_shipping_fees_amount)
      end

      # Amount of shipping costs for product returns (for any reason). Applicable when property [[returnFees]] equals [[ReturnShippingFees]].
      def return_shipping_fees_amount=(value)
        write_property(:return_shipping_fees_amount, value)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date
        read_property(:start_date)
      end

      # The start date and time of the item (in [ISO 8601 date format](http://en.wikipedia.org/wiki/ISO_8601)).
      def start_date=(value)
        write_property(:start_date, value)
      end
    end
  end
end
