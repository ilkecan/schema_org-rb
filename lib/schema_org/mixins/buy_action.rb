require "active_support/concern"

module SchemaOrg
  module Mixins
    module BuyAction
      extend ActiveSupport::Concern

      include TradeAction

      included do
        option :vendor, optional: true # 'vendor' is an earlier term for 'seller'. Superseded by `seller`.
        option :warranty_promise, optional: true # The warranty promise(s) included in the offer. Superseded by `warranty`.
        option :seller, optional: true # An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider. Supersedes `vendor`.
      end
    end
  end
end
