require "active_support/concern"

module SchemaOrg
  module Mixins
    module FollowAction
      extend ActiveSupport::Concern

      include InteractAction

      included do
        option :followee # A sub property of object. The person or organization being followed.
      end
    end
  end
end
