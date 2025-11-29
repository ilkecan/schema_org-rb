require "active_support/concern"

module SchemaOrg
  module Mixins
    module RentAction
      extend ActiveSupport::Concern

      include TradeAction

      included do
        option :landlord # A sub property of participant. The owner of the real estate property.
        option :real_estate_agent # A sub property of participant. The real estate agent involved in the action.
      end
    end
  end
end
