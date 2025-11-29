require "active_support/concern"

module SchemaOrg
  module Mixins
    module QuoteAction
      extend ActiveSupport::Concern

      include TradeAction
    end
  end
end
