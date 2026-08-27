# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module BusinessAudience
      include Audience

      def self.schema_property_definitions
        {
          number_of_employees: {
            schema_name: "numberOfEmployees",
            schema_url: "https://schema.org/numberOfEmployees",
            comment_lines: ["The number of employees in an organization, e.g. business."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          yearly_revenue: {
            schema_name: "yearlyRevenue",
            schema_url: "https://schema.org/yearlyRevenue",
            comment_lines: ["The size of the business in annual revenue."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          years_in_operation: {
            schema_name: "yearsInOperation",
            schema_url: "https://schema.org/yearsInOperation",
            comment_lines: ["The age of the business."].freeze,
            ranges: ["QuantitativeValue"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The number of employees in an organization, e.g. business.
      def number_of_employees
        read_property(:number_of_employees)
      end

      # The number of employees in an organization, e.g. business.
      def number_of_employees=(value)
        write_property(:number_of_employees, value)
      end

      # The size of the business in annual revenue.
      def yearly_revenue
        read_property(:yearly_revenue)
      end

      # The size of the business in annual revenue.
      def yearly_revenue=(value)
        write_property(:yearly_revenue, value)
      end

      # The age of the business.
      def years_in_operation
        read_property(:years_in_operation)
      end

      # The age of the business.
      def years_in_operation=(value)
        write_property(:years_in_operation, value)
      end
    end
  end
end
