module SchemaOrg
  module Mixins
    module Corporation
      include Organization

      def self.schema_property_definitions
        {
          :ticker_symbol => {
            schema_name: "tickerSymbol",
            ranges: ["Text"],
          }.freeze,
        }.freeze
      end

      def ticker_symbol
        read_property(:ticker_symbol)
      end

      def ticker_symbol=(value)
        write_property(:ticker_symbol, value)
      end

    end
  end
end
