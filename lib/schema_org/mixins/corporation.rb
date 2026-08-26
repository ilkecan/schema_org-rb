# frozen_string_literal: true

module SchemaOrg
  module Mixins
    module Corporation
      include Organization

      def self.schema_property_definitions
        {
          ticker_symbol: {
            schema_name: "tickerSymbol",
            schema_url: "https://schema.org/tickerSymbol",
            comment_lines: ["The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we recommend using the controlled vocabulary of Market Identifier Codes (MIC) specified in ISO 15022."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we recommend using the controlled vocabulary of Market Identifier Codes (MIC) specified in ISO 15022.
      def ticker_symbol
        read_property(:ticker_symbol)
      end

      # The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we recommend using the controlled vocabulary of Market Identifier Codes (MIC) specified in ISO 15022.
      def ticker_symbol=(value)
        write_property(:ticker_symbol, value)
      end
    end
  end
end
