# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module Order
      include Intangible

      def self.schema_property_definitions
        {
          accepted_offer: {
            schema_name: "acceptedOffer",
            schema_url: "https://schema.org/acceptedOffer",
            comment_lines: ["The offer(s) -- e.g., product, quantity and price combinations -- included in the order."].freeze,
            ranges: ["Offer"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          billing_address: {
            schema_name: "billingAddress",
            schema_url: "https://schema.org/billingAddress",
            comment_lines: ["The billing address for the order."].freeze,
            ranges: ["PostalAddress"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          broker: {
            schema_name: "broker",
            schema_url: "https://schema.org/broker",
            comment_lines: ["An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["bookingAgent"].freeze
          }.freeze,
          confirmation_number: {
            schema_name: "confirmationNumber",
            schema_url: "https://schema.org/confirmationNumber",
            comment_lines: ["A number that confirms the given order or payment has been received."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          customer: {
            schema_name: "customer",
            schema_url: "https://schema.org/customer",
            comment_lines: ["Party placing the order or paying the invoice."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          discount: {
            schema_name: "discount",
            schema_url: "https://schema.org/discount",
            comment_lines: ["Any discount applied (to an Order)."].freeze,
            ranges: ["Number", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          discount_code: {
            schema_name: "discountCode",
            schema_url: "https://schema.org/discountCode",
            comment_lines: ["Code used to redeem a discount."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          discount_currency: {
            schema_name: "discountCurrency",
            schema_url: "https://schema.org/discountCurrency",
            comment_lines: ["The currency of the discount.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          is_gift: {
            schema_name: "isGift",
            schema_url: "https://schema.org/isGift",
            comment_lines: ["Indicates whether the offer was accepted as a gift for someone other than the buyer."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          merchant: {
            schema_name: "merchant",
            schema_url: "https://schema.org/merchant",
            comment_lines: ["'merchant' is an out-dated term for 'seller'."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "seller",
            supersedes: nil
          }.freeze,
          order_date: {
            schema_name: "orderDate",
            schema_url: "https://schema.org/orderDate",
            comment_lines: ["Date order was placed."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_delivery: {
            schema_name: "orderDelivery",
            schema_url: "https://schema.org/orderDelivery",
            comment_lines: ["The delivery of the parcel related to this order or order item."].freeze,
            ranges: ["ParcelDelivery"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_number: {
            schema_name: "orderNumber",
            schema_url: "https://schema.org/orderNumber",
            comment_lines: ["The identifier of the transaction."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          order_status: {
            schema_name: "orderStatus",
            schema_url: "https://schema.org/orderStatus",
            comment_lines: ["The current status of the order."].freeze,
            ranges: ["OrderStatus"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          ordered_item: {
            schema_name: "orderedItem",
            schema_url: "https://schema.org/orderedItem",
            comment_lines: ["The item ordered."].freeze,
            ranges: ["OrderItem", "Product", "Service"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          part_of_invoice: {
            schema_name: "partOfInvoice",
            schema_url: "https://schema.org/partOfInvoice",
            comment_lines: ["The order is being paid as part of the referenced Invoice."].freeze,
            ranges: ["Invoice"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          payment_due: {
            schema_name: "paymentDue",
            schema_url: "https://schema.org/paymentDue",
            comment_lines: ["The date that payment is due."].freeze,
            ranges: ["DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: "paymentDueDate",
            supersedes: nil
          }.freeze,
          payment_due_date: {
            schema_name: "paymentDueDate",
            schema_url: "https://schema.org/paymentDueDate",
            comment_lines: ["The date that payment is due."].freeze,
            ranges: ["Date", "DateTime"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["paymentDue"].freeze
          }.freeze,
          payment_method: {
            schema_name: "paymentMethod",
            schema_url: "https://schema.org/paymentMethod",
            comment_lines: ["The name of the credit card or other method of payment for the order."].freeze,
            ranges: ["PaymentMethod", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          payment_method_id: {
            schema_name: "paymentMethodId",
            schema_url: "https://schema.org/paymentMethodId",
            comment_lines: ["An identifier for the method of payment used (e.g. the last 4 digits of the credit card)."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          payment_url: {
            schema_name: "paymentUrl",
            schema_url: "https://schema.org/paymentUrl",
            comment_lines: ["The URL for sending a payment."].freeze,
            ranges: ["URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          seller: {
            schema_name: "seller",
            schema_url: "https://schema.org/seller",
            comment_lines: ["An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: ["merchant", "vendor"].freeze
          }.freeze
        }.freeze
      end

      # The offer(s) -- e.g., product, quantity and price combinations -- included in the order.
      def accepted_offer
        read_property(:accepted_offer)
      end

      # The offer(s) -- e.g., product, quantity and price combinations -- included in the order.
      def accepted_offer=(value)
        write_property(:accepted_offer, value)
      end

      # The billing address for the order.
      def billing_address
        read_property(:billing_address)
      end

      # The billing address for the order.
      def billing_address=(value)
        write_property(:billing_address, value)
      end

      # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
      # Supersedes `bookingAgent`.
      def broker
        read_property(:broker)
      end

      # An entity that arranges for an exchange between a buyer and a seller.  In most cases a broker never acquires or releases ownership of a product or service involved in an exchange.  If it is not clear whether an entity is a broker, seller, or buyer, the latter two terms are preferred.
      # Supersedes `bookingAgent`.
      def broker=(value)
        write_property(:broker, value)
      end

      # A number that confirms the given order or payment has been received.
      def confirmation_number
        read_property(:confirmation_number)
      end

      # A number that confirms the given order or payment has been received.
      def confirmation_number=(value)
        write_property(:confirmation_number, value)
      end

      # Party placing the order or paying the invoice.
      def customer
        read_property(:customer)
      end

      # Party placing the order or paying the invoice.
      def customer=(value)
        write_property(:customer, value)
      end

      # Any discount applied (to an Order).
      def discount
        read_property(:discount)
      end

      # Any discount applied (to an Order).
      def discount=(value)
        write_property(:discount, value)
      end

      # Code used to redeem a discount.
      def discount_code
        read_property(:discount_code)
      end

      # Code used to redeem a discount.
      def discount_code=(value)
        write_property(:discount_code, value)
      end

      # The currency of the discount.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def discount_currency
        read_property(:discount_currency)
      end

      # The currency of the discount.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def discount_currency=(value)
        write_property(:discount_currency, value)
      end

      # Indicates whether the offer was accepted as a gift for someone other than the buyer.
      def is_gift
        read_property(:is_gift)
      end

      # Indicates whether the offer was accepted as a gift for someone other than the buyer.
      def is_gift=(value)
        write_property(:is_gift, value)
      end

      # 'merchant' is an out-dated term for 'seller'.
      # Superseded by `seller`.
      def merchant
        read_property(:merchant)
      end

      # 'merchant' is an out-dated term for 'seller'.
      # Superseded by `seller`.
      def merchant=(value)
        write_property(:merchant, value)
      end

      # Date order was placed.
      def order_date
        read_property(:order_date)
      end

      # Date order was placed.
      def order_date=(value)
        write_property(:order_date, value)
      end

      # The delivery of the parcel related to this order or order item.
      def order_delivery
        read_property(:order_delivery)
      end

      # The delivery of the parcel related to this order or order item.
      def order_delivery=(value)
        write_property(:order_delivery, value)
      end

      # The identifier of the transaction.
      def order_number
        read_property(:order_number)
      end

      # The identifier of the transaction.
      def order_number=(value)
        write_property(:order_number, value)
      end

      # The current status of the order.
      def order_status
        read_property(:order_status)
      end

      # The current status of the order.
      def order_status=(value)
        write_property(:order_status, value)
      end

      # The item ordered.
      def ordered_item
        read_property(:ordered_item)
      end

      # The item ordered.
      def ordered_item=(value)
        write_property(:ordered_item, value)
      end

      # The order is being paid as part of the referenced Invoice.
      def part_of_invoice
        read_property(:part_of_invoice)
      end

      # The order is being paid as part of the referenced Invoice.
      def part_of_invoice=(value)
        write_property(:part_of_invoice, value)
      end

      # The date that payment is due.
      # Superseded by `paymentDueDate`.
      def payment_due
        read_property(:payment_due)
      end

      # The date that payment is due.
      # Superseded by `paymentDueDate`.
      def payment_due=(value)
        write_property(:payment_due, value)
      end

      # The date that payment is due.
      # Supersedes `paymentDue`.
      def payment_due_date
        read_property(:payment_due_date)
      end

      # The date that payment is due.
      # Supersedes `paymentDue`.
      def payment_due_date=(value)
        write_property(:payment_due_date, value)
      end

      # The name of the credit card or other method of payment for the order.
      def payment_method
        read_property(:payment_method)
      end

      # The name of the credit card or other method of payment for the order.
      def payment_method=(value)
        write_property(:payment_method, value)
      end

      # An identifier for the method of payment used (e.g. the last 4 digits of the credit card).
      def payment_method_id
        read_property(:payment_method_id)
      end

      # An identifier for the method of payment used (e.g. the last 4 digits of the credit card).
      def payment_method_id=(value)
        write_property(:payment_method_id, value)
      end

      # The URL for sending a payment.
      def payment_url
        read_property(:payment_url)
      end

      # The URL for sending a payment.
      def payment_url=(value)
        write_property(:payment_url, value)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `merchant`.
      # Supersedes `vendor`.
      def seller
        read_property(:seller)
      end

      # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      # Supersedes `merchant`.
      # Supersedes `vendor`.
      def seller=(value)
        write_property(:seller, value)
      end
    end
  end
end
