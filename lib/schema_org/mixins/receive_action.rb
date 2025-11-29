require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReceiveAction
      extend ActiveSupport::Concern

      include TransferAction

      included do
        option :delivery_method # A sub property of instrument. The method of delivery.
        option :sender # A sub property of participant. The participant who is at the sending end of the action.
      end
    end
  end
end
