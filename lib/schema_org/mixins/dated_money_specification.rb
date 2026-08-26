module SchemaOrg
  module Mixins
    module DatedMoneySpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          :amount => {
            schema_name: "amount",
            ranges: ["MonetaryAmount", "Number"],
          }.freeze,
          :currency => {
            schema_name: "currency",
            ranges: ["Text"],
          }.freeze,
          :end_date => {
            schema_name: "endDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
          :start_date => {
            schema_name: "startDate",
            ranges: ["Date", "DateTime"],
          }.freeze,
        }.freeze
      end

      def amount
        read_property(:amount)
      end

      def amount=(value)
        write_property(:amount, value)
      end

      def currency
        read_property(:currency)
      end

      def currency=(value)
        write_property(:currency, value)
      end

      def end_date
        read_property(:end_date)
      end

      def end_date=(value)
        write_property(:end_date, value)
      end

      def start_date
        read_property(:start_date)
      end

      def start_date=(value)
        write_property(:start_date, value)
      end

    end
  end
end
