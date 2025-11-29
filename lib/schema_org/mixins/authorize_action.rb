require "active_support/concern"

module SchemaOrg
  module Mixins
    module AuthorizeAction
      extend ActiveSupport::Concern

      include AllocateAction

      included do
        option :recipient # A sub property of participant. The participant who is at the receiving end of the action.
      end
    end
  end
end
