# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module MortgageLoan
      include LoanOrCredit

      def self.schema_property_definitions
        {
          domiciled_mortgage: {
            schema_name: "domiciledMortgage",
            schema_url: "https://schema.org/domiciledMortgage",
            comment_lines: ["Whether borrower is a resident of the jurisdiction where the property is located."].freeze,
            ranges: ["Boolean"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          loan_mortgage_mandate_amount: {
            schema_name: "loanMortgageMandateAmount",
            schema_url: "https://schema.org/loanMortgageMandateAmount",
            comment_lines: ["Amount of mortgage mandate that can be converted into a proper mortgage at a later stage."].freeze,
            ranges: ["MonetaryAmount"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # Whether borrower is a resident of the jurisdiction where the property is located.
      def domiciled_mortgage
        read_property(:domiciled_mortgage)
      end

      # Whether borrower is a resident of the jurisdiction where the property is located.
      def domiciled_mortgage=(value)
        write_property(:domiciled_mortgage, value)
      end

      # Amount of mortgage mandate that can be converted into a proper mortgage at a later stage.
      def loan_mortgage_mandate_amount
        read_property(:loan_mortgage_mandate_amount)
      end

      # Amount of mortgage mandate that can be converted into a proper mortgage at a later stage.
      def loan_mortgage_mandate_amount=(value)
        write_property(:loan_mortgage_mandate_amount, value)
      end
    end
  end
end
