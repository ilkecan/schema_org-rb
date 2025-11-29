require "active_support/concern"

module SchemaOrg
  module Mixins
    module BuyAction
      extend ActiveSupport::Concern

      include TradeAction

      included do
        option :vendor # 'vendor' is an earlier term for 'seller'.
        option :warranty_promise # The warranty promise(s) included in the offer.
        option :seller # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
      end
    end
  end
end
