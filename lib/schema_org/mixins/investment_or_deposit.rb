# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module InvestmentOrDeposit
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
    end
  end
end
