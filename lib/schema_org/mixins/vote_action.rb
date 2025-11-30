require "active_support/concern"

module SchemaOrg
  module Mixins
    module VoteAction
      extend ActiveSupport::Concern

      include ChooseAction

      included do
        option :candidate, optional: true # A sub property of object. The candidate subject of this action.
      end
    end
  end
end
