module SchemaOrg
  module Mixins
    module MonetaryAmountDistribution
      include QuantitativeValueDistribution

      def self.schema_property_definitions
        {
          :currency => {
            schema_name: "currency",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def currency
        read_property(:currency)
      end

      def currency=(value)
        write_property(:currency, value)
      end

    end
  end
end
