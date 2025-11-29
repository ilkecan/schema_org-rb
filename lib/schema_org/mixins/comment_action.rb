require "active_support/concern"

module SchemaOrg
  module Mixins
    module CommentAction
      extend ActiveSupport::Concern

      include CommunicateAction

      included do
        option :result_comment # A sub property of result. The Comment created or sent as a result of this action.
      end
    end
  end
end
