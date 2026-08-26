module SchemaOrg
  module Mixins
    module Order
      include Intangible

      def self.schema_property_definitions
        {
          :accepted_offer => {
            schema_name: "acceptedOffer",
            ranges: ["Offer"],
          }.freeze,
          :billing_address => {
            schema_name: "billingAddress",
            ranges: ["PostalAddress"],
          }.freeze,
          :broker => {
            schema_name: "broker",
            ranges: ["Organization", "Person"],
          }.freeze,
          :confirmation_number => {
            schema_name: "confirmationNumber",
            ranges: ["Text"],
          }.freeze,
          :customer => {
            schema_name: "customer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :discount => {
            schema_name: "discount",
            ranges: ["Number", "Text"],
          }.freeze,
          :discount_code => {
            schema_name: "discountCode",
            ranges: ["Text"],
          }.freeze,
          :discount_currency => {
            schema_name: "discountCurrency",
            ranges: ["Text"],
          }.freeze,
          :is_gift => {
            schema_name: "isGift",
            ranges: ["Boolean"],
          }.freeze,
          :merchant => {
            schema_name: "merchant",
            ranges: ["Organization", "Person"],
          }.freeze,
          :order_date => {
            schema_name: "orderDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :order_delivery => {
            schema_name: "orderDelivery",
            ranges: ["ParcelDelivery"],
          }.freeze,
          :order_number => {
            schema_name: "orderNumber",
            ranges: ["Text"],
          }.freeze,
          :order_status => {
            schema_name: "orderStatus",
            ranges: ["OrderStatus"],
          }.freeze,
          :ordered_item => {
            schema_name: "orderedItem",
            ranges: ["OrderItem", "Product", "Service"],
          }.freeze,
          :part_of_invoice => {
            schema_name: "partOfInvoice",
            ranges: ["Invoice"],
          }.freeze,
          :payment_due => {
            schema_name: "paymentDue",
            ranges: ["DateTime"],
          }.freeze,
          :payment_due_date => {
            schema_name: "paymentDueDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :payment_method => {
            schema_name: "paymentMethod",
            ranges: ["PaymentMethod", "Text"],
          }.freeze,
          :payment_method_id => {
            schema_name: "paymentMethodId",
            ranges: ["Text"],
          }.freeze,
          :payment_url => {
            schema_name: "paymentUrl",
            ranges: ["URL"],
          }.freeze,
          :seller => {
            schema_name: "seller",
            ranges: ["Organization", "Person"],
          }.freeze,
        }.freeze
      end

      def accepted_offer
        read_property(:accepted_offer)
      end

      def accepted_offer=(value)
        write_property(:accepted_offer, value)
      end

      def billing_address
        read_property(:billing_address)
      end

      def billing_address=(value)
        write_property(:billing_address, value)
      end

      def broker
        read_property(:broker)
      end

      def broker=(value)
        write_property(:broker, value)
      end

      def confirmation_number
        read_property(:confirmation_number)
      end

      def confirmation_number=(value)
        write_property(:confirmation_number, value)
      end

      def customer
        read_property(:customer)
      end

      def customer=(value)
        write_property(:customer, value)
      end

      def discount
        read_property(:discount)
      end

      def discount=(value)
        write_property(:discount, value)
      end

      def discount_code
        read_property(:discount_code)
      end

      def discount_code=(value)
        write_property(:discount_code, value)
      end

      def discount_currency
        read_property(:discount_currency)
      end

      def discount_currency=(value)
        write_property(:discount_currency, value)
      end

      def is_gift
        read_property(:is_gift)
      end

      def is_gift=(value)
        write_property(:is_gift, value)
      end

      def merchant
        read_property(:merchant)
      end

      def merchant=(value)
        write_property(:merchant, value)
      end

      def order_date
        read_property(:order_date)
      end

      def order_date=(value)
        write_property(:order_date, value)
      end

      def order_delivery
        read_property(:order_delivery)
      end

      def order_delivery=(value)
        write_property(:order_delivery, value)
      end

      def order_number
        read_property(:order_number)
      end

      def order_number=(value)
        write_property(:order_number, value)
      end

      def order_status
        read_property(:order_status)
      end

      def order_status=(value)
        write_property(:order_status, value)
      end

      def ordered_item
        read_property(:ordered_item)
      end

      def ordered_item=(value)
        write_property(:ordered_item, value)
      end

      def part_of_invoice
        read_property(:part_of_invoice)
      end

      def part_of_invoice=(value)
        write_property(:part_of_invoice, value)
      end

      def payment_due
        read_property(:payment_due)
      end

      def payment_due=(value)
        write_property(:payment_due, value)
      end

      def payment_due_date
        read_property(:payment_due_date)
      end

      def payment_due_date=(value)
        write_property(:payment_due_date, value)
      end

      def payment_method
        read_property(:payment_method)
      end

      def payment_method=(value)
        write_property(:payment_method, value)
      end

      def payment_method_id
        read_property(:payment_method_id)
      end

      def payment_method_id=(value)
        write_property(:payment_method_id, value)
      end

      def payment_url
        read_property(:payment_url)
      end

      def payment_url=(value)
        write_property(:payment_url, value)
      end

      def seller
        read_property(:seller)
      end

      def seller=(value)
        write_property(:seller, value)
      end

    end
  end
end
