require "active_support/concern"

module SchemaOrg
  module Mixins
    module TipAction
      extend ActiveSupport::Concern

      include TradeAction

      included do
        option :recipient, optional: true # A sub property of participant. The participant who is at the receiving end of the action.
      end
    end
  end
end
