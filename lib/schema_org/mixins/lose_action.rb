require "active_support/concern"

module SchemaOrg
  module Mixins
    module LoseAction
      extend ActiveSupport::Concern

      include AchieveAction

      included do
        option :winner, optional: true # A sub property of participant. The winner of the action.
      end
    end
  end
end
