module SchemaOrg
  module Mixins
    module FinancialProduct
      include Service

      def self.schema_property_definitions
        {
          :annual_percentage_rate => {
            schema_name: "annualPercentageRate",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
          :fees_and_commissions_specification => {
            schema_name: "feesAndCommissionsSpecification",
            ranges: ["Text", "URL"],
          }.freeze,
          :interest_rate => {
            schema_name: "interestRate",
            ranges: ["Number", "QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def annual_percentage_rate
        read_property(:annual_percentage_rate)
      end

      def annual_percentage_rate=(value)
        write_property(:annual_percentage_rate, value)
      end

      def fees_and_commissions_specification
        read_property(:fees_and_commissions_specification)
      end

      def fees_and_commissions_specification=(value)
        write_property(:fees_and_commissions_specification, value)
      end

      def interest_rate
        read_property(:interest_rate)
      end

      def interest_rate=(value)
        write_property(:interest_rate, value)
      end

    end
  end
end
