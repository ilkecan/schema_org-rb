require "active_support/concern"

module SchemaOrg
  module Mixins
    module PreOrderAction
      extend ActiveSupport::Concern

      include TradeAction
    end
  end
end
