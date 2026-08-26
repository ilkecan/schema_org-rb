# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module MoneyTransfer
      include TransferAction

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
          beneficiary_bank: {
            schema_name: "beneficiaryBank",
            schema_url: "https://schema.org/beneficiaryBank",
            comment_lines: ["A bank or bank’s branch, financial institution or international financial institution operating the beneficiary’s bank account or releasing funds for the beneficiary."].freeze,
            ranges: ["BankOrCreditUnion", "Text"].freeze,
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

      # A bank or bank’s branch, financial institution or international financial institution operating the beneficiary’s bank account or releasing funds for the beneficiary.
      def beneficiary_bank
        read_property(:beneficiary_bank)
      end

      # A bank or bank’s branch, financial institution or international financial institution operating the beneficiary’s bank account or releasing funds for the beneficiary.
      def beneficiary_bank=(value)
        write_property(:beneficiary_bank, value)
      end
    end
  end
end
