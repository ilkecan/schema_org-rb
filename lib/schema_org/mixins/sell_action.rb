require "active_support/concern"

module SchemaOrg
  module Mixins
    module SellAction
      extend ActiveSupport::Concern

      include TradeAction

      included do
        option :buyer # A sub property of participant. The participant/person/organization that bought the object.
        option :warranty_promise # The warranty promise(s) included in the offer.
      end
    end
  end
end
