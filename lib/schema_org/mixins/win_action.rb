require "active_support/concern"

module SchemaOrg
  module Mixins
    module WinAction
      extend ActiveSupport::Concern

      include AchieveAction

      included do
        option :loser, optional: true # A sub property of participant. The loser of the action.
      end
    end
  end
end
