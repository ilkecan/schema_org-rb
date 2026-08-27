# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module FinancialProduct
      include Service

      def self.schema_property_definitions
        {
          annual_percentage_rate: {
            schema_name: "annualPercentageRate",
            schema_url: "https://schema.org/annualPercentageRate",
            comment_lines: ["The annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          fees_and_commissions_specification: {
            schema_name: "feesAndCommissionsSpecification",
            schema_url: "https://schema.org/feesAndCommissionsSpecification",
            comment_lines: ["Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          interest_rate: {
            schema_name: "interestRate",
            schema_url: "https://schema.org/interestRate",
            comment_lines: ["The interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate."].freeze,
            ranges: ["Number", "QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction.
      def annual_percentage_rate
        read_property(:annual_percentage_rate)
      end

      # The annual rate that is charged for borrowing (or made by investing), expressed as a single percentage number that represents the actual yearly cost of funds over the term of a loan. This includes any fees or additional costs associated with the transaction.
      def annual_percentage_rate=(value)
        write_property(:annual_percentage_rate, value)
      end

      # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
      def fees_and_commissions_specification
        read_property(:fees_and_commissions_specification)
      end

      # Description of fees, commissions, and other terms applied either to a class of financial product, or by a financial service organization.
      def fees_and_commissions_specification=(value)
        write_property(:fees_and_commissions_specification, value)
      end

      # The interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate.
      def interest_rate
        read_property(:interest_rate)
      end

      # The interest rate, charged or paid, applicable to the financial product. Note: This is different from the calculated annualPercentageRate.
      def interest_rate=(value)
        write_property(:interest_rate, value)
      end
    end
  end
end
