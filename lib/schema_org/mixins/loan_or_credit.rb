module SchemaOrg
  module Mixins
    module LoanOrCredit
      include FinancialProduct

      def self.schema_property_definitions
        {
          :amount => {
            schema_name: "amount",
            ranges: ["MonetaryAmount", "Number"],
          }.freeze,
          :loan_term => {
            schema_name: "loanTerm",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :required_collateral => {
            schema_name: "requiredCollateral",
            ranges: ["Text", "Thing"],
          }.freeze,
        }.freeze
      end

      def amount
        read_property(:amount)
      end

      def amount=(value)
        write_property(:amount, value)
      end

      def loan_term
        read_property(:loan_term)
      end

      def loan_term=(value)
        write_property(:loan_term, value)
      end

      def required_collateral
        read_property(:required_collateral)
      end

      def required_collateral=(value)
        write_property(:required_collateral, value)
      end

    end
  end
end
