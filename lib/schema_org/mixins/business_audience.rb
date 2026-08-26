module SchemaOrg
  module Mixins
    module BusinessAudience
      include Audience

      def self.schema_property_definitions
        {
          :number_of_employees => {
            schema_name: "numberOfEmployees",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :yearly_revenue => {
            schema_name: "yearlyRevenue",
            ranges: ["QuantitativeValue"],
          }.freeze,
          :years_in_operation => {
            schema_name: "yearsInOperation",
            ranges: ["QuantitativeValue"],
          }.freeze,
        }.freeze
      end

      def number_of_employees
        read_property(:number_of_employees)
      end

      def number_of_employees=(value)
        write_property(:number_of_employees, value)
      end

      def yearly_revenue
        read_property(:yearly_revenue)
      end

      def yearly_revenue=(value)
        write_property(:yearly_revenue, value)
      end

      def years_in_operation
        read_property(:years_in_operation)
      end

      def years_in_operation=(value)
        write_property(:years_in_operation, value)
      end

    end
  end
end
