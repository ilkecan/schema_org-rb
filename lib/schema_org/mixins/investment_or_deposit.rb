module SchemaOrg
  module Mixins
    module InvestmentOrDeposit
      include FinancialProduct

      def self.schema_property_definitions
        {
          :amount => {
            schema_name: "amount",
            ranges: ["MonetaryAmount", "Number"],
          }.freeze,
        }.freeze
      end

      def amount
        read_property(:amount)
      end

      def amount=(value)
        write_property(:amount, value)
      end

    end
  end
end
