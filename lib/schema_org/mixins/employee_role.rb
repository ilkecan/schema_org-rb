module SchemaOrg
  module Mixins
    module EmployeeRole
      include OrganizationRole

      def self.schema_property_definitions
        {
          :base_salary => {
            schema_name: "baseSalary",
            ranges: ["MonetaryAmount", "Number", "PriceSpecification"],
          }.freeze,
          :salary_currency => {
            schema_name: "salaryCurrency",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def base_salary
        read_property(:base_salary)
      end

      def base_salary=(value)
        write_property(:base_salary, value)
      end

      def salary_currency
        read_property(:salary_currency)
      end

      def salary_currency=(value)
        write_property(:salary_currency, value)
      end

    end
  end
end
