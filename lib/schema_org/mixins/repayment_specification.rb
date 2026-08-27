# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module RepaymentSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          down_payment: {
            schema_name: "downPayment",
            schema_url: "https://schema.org/downPayment",
            comment_lines: ["a type of payment made in cash during the onset of the purchase of an expensive good/service. The payment typically represents only a percentage of the full purchase price."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          early_prepayment_penalty: {
            schema_name: "earlyPrepaymentPenalty",
            schema_url: "https://schema.org/earlyPrepaymentPenalty",
            comment_lines: ["The amount to be paid as a penalty in the event of early payment of the loan."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_payment_amount: {
            schema_name: "loanPaymentAmount",
            schema_url: "https://schema.org/loanPaymentAmount",
            comment_lines: ["The amount of money to pay in a single payment."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_payment_frequency: {
            schema_name: "loanPaymentFrequency",
            schema_url: "https://schema.org/loanPaymentFrequency",
            comment_lines: ["Frequency of payments due, i.e. number of months between payments. This is defined as a frequency, i.e. the reciprocal of a period of time."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          number_of_loan_payments: {
            schema_name: "numberOfLoanPayments",
            schema_url: "https://schema.org/numberOfLoanPayments",
            comment_lines: ["The number of payments contractually required at origination to repay the loan. For monthly paying loans this is the number of months from the contractual first payment date to the maturity date."].freeze,
            ranges: ["Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # a type of payment made in cash during the onset of the purchase of an expensive good/service. The payment typically represents only a percentage of the full purchase price.
      def down_payment
        read_property(:down_payment)
      end

      # a type of payment made in cash during the onset of the purchase of an expensive good/service. The payment typically represents only a percentage of the full purchase price.
      def down_payment=(value)
        write_property(:down_payment, value)
      end

      # The amount to be paid as a penalty in the event of early payment of the loan.
      def early_prepayment_penalty
        read_property(:early_prepayment_penalty)
      end

      # The amount to be paid as a penalty in the event of early payment of the loan.
      def early_prepayment_penalty=(value)
        write_property(:early_prepayment_penalty, value)
      end

      # The amount of money to pay in a single payment.
      def loan_payment_amount
        read_property(:loan_payment_amount)
      end

      # The amount of money to pay in a single payment.
      def loan_payment_amount=(value)
        write_property(:loan_payment_amount, value)
      end

      # Frequency of payments due, i.e. number of months between payments. This is defined as a frequency, i.e. the reciprocal of a period of time.
      def loan_payment_frequency
        read_property(:loan_payment_frequency)
      end

      # Frequency of payments due, i.e. number of months between payments. This is defined as a frequency, i.e. the reciprocal of a period of time.
      def loan_payment_frequency=(value)
        write_property(:loan_payment_frequency, value)
      end

      # The number of payments contractually required at origination to repay the loan. For monthly paying loans this is the number of months from the contractual first payment date to the maturity date.
      def number_of_loan_payments
        read_property(:number_of_loan_payments)
      end

      # The number of payments contractually required at origination to repay the loan. For monthly paying loans this is the number of months from the contractual first payment date to the maturity date.
      def number_of_loan_payments=(value)
        write_property(:number_of_loan_payments, value)
      end
    end
  end
end
