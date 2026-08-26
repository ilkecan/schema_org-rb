# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module LoanOrCredit
      include FinancialProduct

      def self.schema_property_definitions
        {
          amount: {
            schema_name: "amount",
            schema_url: "https://schema.org/amount",
            comment_lines: ["The amount of money."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          currency: {
            schema_name: "currency",
            schema_url: "https://schema.org/currency",
            comment_lines: ["The currency in which the monetary amount is expressed.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          grace_period: {
            schema_name: "gracePeriod",
            schema_url: "https://schema.org/gracePeriod",
            comment_lines: ["The period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred."].freeze,
            ranges: ["Duration"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_repayment_form: {
            schema_name: "loanRepaymentForm",
            schema_url: "https://schema.org/loanRepaymentForm",
            comment_lines: ["A form of paying back money previously borrowed from a lender. Repayment usually takes the form of periodic payments that normally include part principal plus interest in each payment."].freeze,
            ranges: ["RepaymentSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_term: {
            schema_name: "loanTerm",
            schema_url: "https://schema.org/loanTerm",
            comment_lines: ["The duration of the loan or credit agreement."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_type: {
            schema_name: "loanType",
            schema_url: "https://schema.org/loanType",
            comment_lines: ["The type of a loan or credit."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          recourse_loan: {
            schema_name: "recourseLoan",
            schema_url: "https://schema.org/recourseLoan",
            comment_lines: ["The only way you get the money back in the event of default is the security. Recourse is where you still have the opportunity to go back to the borrower for the rest of the money."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          renegotiable_loan: {
            schema_name: "renegotiableLoan",
            schema_url: "https://schema.org/renegotiableLoan",
            comment_lines: ["Whether the terms for payment of interest can be renegotiated during the life of the loan."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          required_collateral: {
            schema_name: "requiredCollateral",
            schema_url: "https://schema.org/requiredCollateral",
            comment_lines: ["Assets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)"].freeze,
            ranges: ["Text", "Thing"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The amount of money.
      def amount
        read_property(:amount)
      end

      # The amount of money.
      def amount=(value)
        write_property(:amount, value)
      end

      # The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currency
        read_property(:currency)
      end

      # The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currency=(value)
        write_property(:currency, value)
      end

      # The period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred.
      def grace_period
        read_property(:grace_period)
      end

      # The period of time after any due date that the borrower has to fulfil its obligations before a default (failure to pay) is deemed to have occurred.
      def grace_period=(value)
        write_property(:grace_period, value)
      end

      # A form of paying back money previously borrowed from a lender. Repayment usually takes the form of periodic payments that normally include part principal plus interest in each payment.
      def loan_repayment_form
        read_property(:loan_repayment_form)
      end

      # A form of paying back money previously borrowed from a lender. Repayment usually takes the form of periodic payments that normally include part principal plus interest in each payment.
      def loan_repayment_form=(value)
        write_property(:loan_repayment_form, value)
      end

      # The duration of the loan or credit agreement.
      def loan_term
        read_property(:loan_term)
      end

      # The duration of the loan or credit agreement.
      def loan_term=(value)
        write_property(:loan_term, value)
      end

      # The type of a loan or credit.
      def loan_type
        read_property(:loan_type)
      end

      # The type of a loan or credit.
      def loan_type=(value)
        write_property(:loan_type, value)
      end

      # The only way you get the money back in the event of default is the security. Recourse is where you still have the opportunity to go back to the borrower for the rest of the money.
      def recourse_loan
        read_property(:recourse_loan)
      end

      # The only way you get the money back in the event of default is the security. Recourse is where you still have the opportunity to go back to the borrower for the rest of the money.
      def recourse_loan=(value)
        write_property(:recourse_loan, value)
      end

      # Whether the terms for payment of interest can be renegotiated during the life of the loan.
      def renegotiable_loan
        read_property(:renegotiable_loan)
      end

      # Whether the terms for payment of interest can be renegotiated during the life of the loan.
      def renegotiable_loan=(value)
        write_property(:renegotiable_loan, value)
      end

      # Assets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)
      def required_collateral
        read_property(:required_collateral)
      end

      # Assets required to secure loan or credit repayments. It may take form of third party pledge, goods, financial instruments (cash, securities, etc.)
      def required_collateral=(value)
        write_property(:required_collateral, value)
      end
    end
  end
end
