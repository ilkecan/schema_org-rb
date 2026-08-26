# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Invoice
      include Intangible

      def self.schema_property_definitions
        {
          account_id: {
            schema_name: "accountId",
            schema_url: "https://schema.org/accountId",
            comment_lines: ["The identifier for the account the payment will be applied to."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          billing_period: {
            schema_name: "billingPeriod",
            schema_url: "https://schema.org/billingPeriod",
            comment_lines: ["The time interval used to compute the invoice."].freeze,
            ranges: ["Duration"].freeze,
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
            supersedes: "bookingAgent"
          }.freeze,
          category: {
            schema_name: "category",
            schema_url: "https://schema.org/category",
            comment_lines: ["A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy."].freeze,
            ranges: ["CategoryCode", "PhysicalActivityCategory", "Text", "Thing", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
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
          minimum_payment_due: {
            schema_name: "minimumPaymentDue",
            schema_url: "https://schema.org/minimumPaymentDue",
            comment_lines: ["The minimum payment required at this time."].freeze,
            ranges: ["MonetaryAmount", "PriceSpecification"].freeze,
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
            supersedes: "paymentDue"
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
          payment_status: {
            schema_name: "paymentStatus",
            schema_url: "https://schema.org/paymentStatus",
            comment_lines: ["The status of payment; whether the invoice has been paid or not."].freeze,
            ranges: ["PaymentStatusType", "Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          provider: {
            schema_name: "provider",
            schema_url: "https://schema.org/provider",
            comment_lines: ["The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller."].freeze,
            ranges: ["Organization", "Person"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: "carrier"
          }.freeze,
          references_order: {
            schema_name: "referencesOrder",
            schema_url: "https://schema.org/referencesOrder",
            comment_lines: ["The Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice."].freeze,
            ranges: ["Order"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          scheduled_payment_date: {
            schema_name: "scheduledPaymentDate",
            schema_url: "https://schema.org/scheduledPaymentDate",
            comment_lines: ["The date the invoice is scheduled to be paid."].freeze,
            ranges: ["Date"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          total_payment_due: {
            schema_name: "totalPaymentDue",
            schema_url: "https://schema.org/totalPaymentDue",
            comment_lines: ["The total amount due."].freeze,
            ranges: ["MonetaryAmount", "PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The identifier for the account the payment will be applied to.
      def account_id
        read_property(:account_id)
      end

      # The identifier for the account the payment will be applied to.
      def account_id=(value)
        write_property(:account_id, value)
      end

      # The time interval used to compute the invoice.
      def billing_period
        read_property(:billing_period)
      end

      # The time interval used to compute the invoice.
      def billing_period=(value)
        write_property(:billing_period, value)
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

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category
        read_property(:category)
      end

      # A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
      def category=(value)
        write_property(:category, value)
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

      # The minimum payment required at this time.
      def minimum_payment_due
        read_property(:minimum_payment_due)
      end

      # The minimum payment required at this time.
      def minimum_payment_due=(value)
        write_property(:minimum_payment_due, value)
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

      # The status of payment; whether the invoice has been paid or not.
      def payment_status
        read_property(:payment_status)
      end

      # The status of payment; whether the invoice has been paid or not.
      def payment_status=(value)
        write_property(:payment_status, value)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider
        read_property(:provider)
      end

      # The service provider, service operator, or service performer; the goods producer. Another party (a seller) may offer those services or goods on behalf of the provider. A provider may also serve as the seller.
      # Supersedes `carrier`.
      def provider=(value)
        write_property(:provider, value)
      end

      # The Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice.
      def references_order
        read_property(:references_order)
      end

      # The Order(s) related to this Invoice. One or more Orders may be combined into a single Invoice.
      def references_order=(value)
        write_property(:references_order, value)
      end

      # The date the invoice is scheduled to be paid.
      def scheduled_payment_date
        read_property(:scheduled_payment_date)
      end

      # The date the invoice is scheduled to be paid.
      def scheduled_payment_date=(value)
        write_property(:scheduled_payment_date, value)
      end

      # The total amount due.
      def total_payment_due
        read_property(:total_payment_due)
      end

      # The total amount due.
      def total_payment_due=(value)
        write_property(:total_payment_due, value)
      end
    end
  end
end
