# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module BankAccount
      include FinancialProduct

      def self.schema_property_definitions
        {
          account_minimum_inflow: {
            schema_name: "accountMinimumInflow",
            schema_url: "https://schema.org/accountMinimumInflow",
            comment_lines: ["A minimum amount that has to be paid in every month."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          account_overdraft_limit: {
            schema_name: "accountOverdraftLimit",
            schema_url: "https://schema.org/accountOverdraftLimit",
            comment_lines: ["An overdraft is an extension of credit from a lending institution when an account reaches zero. An overdraft allows the individual to continue withdrawing money even if the account has no funds in it. Basically the bank allows people to borrow a set amount of money."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          bank_account_type: {
            schema_name: "bankAccountType",
            schema_url: "https://schema.org/bankAccountType",
            comment_lines: ["The type of a bank account."].freeze,
            ranges: ["Text", "URL"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # A minimum amount that has to be paid in every month.
      def account_minimum_inflow
        read_property(:account_minimum_inflow)
      end

      # A minimum amount that has to be paid in every month.
      def account_minimum_inflow=(value)
        write_property(:account_minimum_inflow, value)
      end

      # An overdraft is an extension of credit from a lending institution when an account reaches zero. An overdraft allows the individual to continue withdrawing money even if the account has no funds in it. Basically the bank allows people to borrow a set amount of money.
      def account_overdraft_limit
        read_property(:account_overdraft_limit)
      end

      # An overdraft is an extension of credit from a lending institution when an account reaches zero. An overdraft allows the individual to continue withdrawing money even if the account has no funds in it. Basically the bank allows people to borrow a set amount of money.
      def account_overdraft_limit=(value)
        write_property(:account_overdraft_limit, value)
      end

      # The type of a bank account.
      def bank_account_type
        read_property(:bank_account_type)
      end

      # The type of a bank account.
      def bank_account_type=(value)
        write_property(:bank_account_type, value)
      end
    end
  end
end
