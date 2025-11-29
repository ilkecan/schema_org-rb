require "active_support/concern"

module SchemaOrg
  module Mixins
    module ChooseAction
      extend ActiveSupport::Concern

      include AssessAction

      included do
        option :option # A sub property of object. The options subject to this action.
        option :action_option # A sub property of object. The options subject to this action.
      end
    end
  end
end
