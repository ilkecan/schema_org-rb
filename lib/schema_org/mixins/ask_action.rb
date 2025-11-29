require "active_support/concern"

module SchemaOrg
  module Mixins
    module AskAction
      extend ActiveSupport::Concern

      include CommunicateAction

      included do
        option :question # A sub property of object. A question.
      end
    end
  end
end
