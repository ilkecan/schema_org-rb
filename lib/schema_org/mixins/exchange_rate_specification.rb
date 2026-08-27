# frozen_string_literal: true
# Generated Ruby code is licensed under MIT.
# Schema.org descriptions in comments and metadata are licensed under CC BY-SA 3.0.
# See LICENSE-SCHEMA-ORG.txt.

module SchemaOrg
  module Mixins
    module ExchangeRateSpecification
      include StructuredValue

      def self.schema_property_definitions
        {
          currency: {
            schema_name: "currency",
            schema_url: "https://schema.org/currency",
            comment_lines: ["The currency in which the monetary amount is expressed.\\n\\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. \"USD\"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. \"BTC\"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. \"Ithaca HOUR\"."].freeze,
            ranges: ["Text"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          current_exchange_rate: {
            schema_name: "currentExchangeRate",
            schema_url: "https://schema.org/currentExchangeRate",
            comment_lines: ["The current price of a currency."].freeze,
            ranges: ["UnitPriceSpecification"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze,
          exchange_rate_spread: {
            schema_name: "exchangeRateSpread",
            schema_url: "https://schema.org/exchangeRateSpread",
            comment_lines: ["The difference between the price at which a broker or other intermediary buys and sells foreign currency."].freeze,
            ranges: ["MonetaryAmount", "Number"].freeze,
            external_ranges: [].freeze,
            inverse_of: nil,
            superseded_by: nil,
            supersedes: nil
          }.freeze
        }.freeze
      end

      # The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currency
        read_property(:currency)
      end

      # The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      def currency=(value)
        write_property(:currency, value)
      end

      # The current price of a currency.
      def current_exchange_rate
        read_property(:current_exchange_rate)
      end

      # The current price of a currency.
      def current_exchange_rate=(value)
        write_property(:current_exchange_rate, value)
      end

      # The difference between the price at which a broker or other intermediary buys and sells foreign currency.
      def exchange_rate_spread
        read_property(:exchange_rate_spread)
      end

      # The difference between the price at which a broker or other intermediary buys and sells foreign currency.
      def exchange_rate_spread=(value)
        write_property(:exchange_rate_spread, value)
      end
    end
  end
end
