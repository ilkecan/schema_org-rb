module SchemaOrg
  module Mixins
    module Invoice
      include Intangible

      def self.schema_property_definitions
        {
          :account_id => {
            schema_name: "accountId",
            ranges: ["Text"],
          }.freeze,
          :billing_period => {
            schema_name: "billingPeriod",
            ranges: ["Duration"],
          }.freeze,
          :broker => {
            schema_name: "broker",
            ranges: ["Organization", "Person"],
          }.freeze,
          :category => {
            schema_name: "category",
            ranges: ["Text", "Thing"],
          }.freeze,
          :confirmation_number => {
            schema_name: "confirmationNumber",
            ranges: ["Text"],
          }.freeze,
          :customer => {
            schema_name: "customer",
            ranges: ["Organization", "Person"],
          }.freeze,
          :minimum_payment_due => {
            schema_name: "minimumPaymentDue",
            ranges: ["MonetaryAmount", "PriceSpecification"],
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
          :payment_status => {
            schema_name: "paymentStatus",
            ranges: ["PaymentStatusType", "Text"],
          }.freeze,
          :provider => {
            schema_name: "provider",
            ranges: ["Organization", "Person"],
          }.freeze,
          :references_order => {
            schema_name: "referencesOrder",
            ranges: ["Order"],
          }.freeze,
          :scheduled_payment_date => {
            schema_name: "scheduledPaymentDate",
            ranges: ["Date"],
          }.freeze,
          :total_payment_due => {
            schema_name: "totalPaymentDue",
            ranges: ["MonetaryAmount", "PriceSpecification"],
          }.freeze,
        }.freeze
      end

      def account_id
        read_property(:account_id)
      end

      def account_id=(value)
        write_property(:account_id, value)
      end

      def billing_period
        read_property(:billing_period)
      end

      def billing_period=(value)
        write_property(:billing_period, value)
      end

      def broker
        read_property(:broker)
      end

      def broker=(value)
        write_property(:broker, value)
      end

      def category
        read_property(:category)
      end

      def category=(value)
        write_property(:category, value)
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

      def minimum_payment_due
        read_property(:minimum_payment_due)
      end

      def minimum_payment_due=(value)
        write_property(:minimum_payment_due, value)
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

      def payment_status
        read_property(:payment_status)
      end

      def payment_status=(value)
        write_property(:payment_status, value)
      end

      def provider
        read_property(:provider)
      end

      def provider=(value)
        write_property(:provider, value)
      end

      def references_order
        read_property(:references_order)
      end

      def references_order=(value)
        write_property(:references_order, value)
      end

      def scheduled_payment_date
        read_property(:scheduled_payment_date)
      end

      def scheduled_payment_date=(value)
        write_property(:scheduled_payment_date, value)
      end

      def total_payment_due
        read_property(:total_payment_due)
      end

      def total_payment_due=(value)
        write_property(:total_payment_due, value)
      end

    end
  end
end
