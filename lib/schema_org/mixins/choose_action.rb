require "active_support/concern"

module SchemaOrg
  module Mixins
    module ChooseAction
      extend ActiveSupport::Concern

      include AssessAction

      included do
        option :option, optional: true # A sub property of object. The options subject to this action. Superseded by `action_option`.
        option :action_option, optional: true # A sub property of object. The options subject to this action. Supersedes `option`.
      end
    end
  end
end
