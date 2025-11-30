require "active_support/concern"

module SchemaOrg
  module Mixins
    module Corporation
      extend ActiveSupport::Concern

      include Organization

      included do
        option :ticker_symbol, optional: true # The exchange traded instrument associated with a Corporation object. The tickerSymbol is expressed as an exchange and an instrument name separated by a space character. For the exchange component of the tickerSymbol attribute, we recommend using the controlled vocabulary of Market Identifier Codes (MIC) specified in ISO 15022.
      end
    end
  end
end
