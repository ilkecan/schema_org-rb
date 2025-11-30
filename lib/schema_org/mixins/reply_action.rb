require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReplyAction
      extend ActiveSupport::Concern

      include CommunicateAction

      included do
        option :result_comment, optional: true # A sub property of result. The Comment created or sent as a result of this action.
      end
    end
  end
end
