# frozen_string_literal: true

# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.
module SchemaOrg
  module Mixins
    module EmployeeRole
      include OrganizationRole

      def self.schema_property_definitions
        {
          base_salary: {
            schema_name: "baseSalary",
            schema_url: "https://schema.org/baseSalary",
            comment_lines: ["The base salary of the job or of an employee in an EmployeeRole."].freeze,
            ranges: ["MonetaryAmount", "Number", "PriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          salary_currency: {
            schema_name: "salaryCurrency",
            schema_url: "https://schema.org/salaryCurrency",
            comment_lines: ["The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The base salary of the job or of an employee in an EmployeeRole.
      def base_salary
        read_property(:base_salary)
      end

      # The base salary of the job or of an employee in an EmployeeRole.
      def base_salary=(value)
        write_property(:base_salary, value)
      end

      # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
      def salary_currency
        read_property(:salary_currency)
      end

      # The currency (coded using [ISO 4217](http://en.wikipedia.org/wiki/ISO_4217)) used for the main salary information in this job posting or for this employee.
      def salary_currency=(value)
        write_property(:salary_currency, value)
      end
    end
  end
end
