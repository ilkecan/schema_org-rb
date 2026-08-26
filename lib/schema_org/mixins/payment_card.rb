# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module PaymentCard
      include FinancialProduct
      include PaymentMethod

      def self.schema_property_definitions
        {
          cash_back: {
            schema_name: "cashBack",
            schema_url: "https://schema.org/cashBack",
            comment_lines: ["A cardholder benefit that pays the cardholder a small percentage of their net expenditures."].freeze,
            ranges: ["Boolean", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          contactless_payment: {
            schema_name: "contactlessPayment",
            schema_url: "https://schema.org/contactlessPayment",
            comment_lines: ["A secure method for consumers to purchase products or services via debit, credit or smartcards by using RFID or NFC technology."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          floor_limit: {
            schema_name: "floorLimit",
            schema_url: "https://schema.org/floorLimit",
            comment_lines: ["A floor limit is the amount of money above which credit card transactions must be authorized."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          monthly_minimum_repayment_amount: {
            schema_name: "monthlyMinimumRepaymentAmount",
            schema_url: "https://schema.org/monthlyMinimumRepaymentAmount",
            comment_lines: ["The minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A cardholder benefit that pays the cardholder a small percentage of their net expenditures.
      def cash_back
        read_property(:cash_back)
      end

      # A cardholder benefit that pays the cardholder a small percentage of their net expenditures.
      def cash_back=(value)
        write_property(:cash_back, value)
      end

      # A secure method for consumers to purchase products or services via debit, credit or smartcards by using RFID or NFC technology.
      def contactless_payment
        read_property(:contactless_payment)
      end

      # A secure method for consumers to purchase products or services via debit, credit or smartcards by using RFID or NFC technology.
      def contactless_payment=(value)
        write_property(:contactless_payment, value)
      end

      # A floor limit is the amount of money above which credit card transactions must be authorized.
      def floor_limit
        read_property(:floor_limit)
      end

      # A floor limit is the amount of money above which credit card transactions must be authorized.
      def floor_limit=(value)
        write_property(:floor_limit, value)
      end

      # The minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month.
      def monthly_minimum_repayment_amount
        read_property(:monthly_minimum_repayment_amount)
      end

      # The minimum payment is the lowest amount of money that one is required to pay on a credit card statement each month.
      def monthly_minimum_repayment_amount=(value)
        write_property(:monthly_minimum_repayment_amount, value)
      end
    end
  end
end
