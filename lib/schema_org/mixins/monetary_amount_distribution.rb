require "active_support/concern"

module SchemaOrg
  module Mixins
    module MonetaryAmountDistribution
      extend ActiveSupport::Concern

      include QuantitativeValueDistribution

      included do
        option :currency, optional: true # The currency in which the monetary amount is expressed.\n\nUse standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217), e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies, e.g. "BTC"; well known names for [Local Exchange Trading Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types, e.g. "Ithaca HOUR".
      end
    end
  end
end
