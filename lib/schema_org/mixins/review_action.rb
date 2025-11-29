require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReviewAction
      extend ActiveSupport::Concern

      include AssessAction

      included do
        option :result_review # A sub property of result. The review that resulted in the performing of the action.
      end
    end
  end
end
