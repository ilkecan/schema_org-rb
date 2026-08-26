module SchemaOrg
  module Mixins
    module LocalBusiness
      include Organization
      include Place

      def self.schema_property_definitions
        {
          :branch_of => {
            schema_name: "branchOf",
            ranges: ["Organization"],
          }.freeze,
          :currencies_accepted => {
            schema_name: "currenciesAccepted",
            ranges: ["Text"],
          }.freeze,
          :opening_hours => {
            schema_name: "openingHours",
            ranges: ["Text"],
          }.freeze,
          :payment_accepted => {
            schema_name: "paymentAccepted",
            ranges: ["Text"],
          }.freeze,
          :price_range => {
            schema_name: "priceRange",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def branch_of
        read_property(:branch_of)
      end

      def branch_of=(value)
        write_property(:branch_of, value)
      end

      def currencies_accepted
        read_property(:currencies_accepted)
      end

      def currencies_accepted=(value)
        write_property(:currencies_accepted, value)
      end

      def opening_hours
        read_property(:opening_hours)
      end

      def opening_hours=(value)
        write_property(:opening_hours, value)
      end

      def payment_accepted
        read_property(:payment_accepted)
      end

      def payment_accepted=(value)
        write_property(:payment_accepted, value)
      end

      def price_range
        read_property(:price_range)
      end

      def price_range=(value)
        write_property(:price_range, value)
      end

    end
  end
end
