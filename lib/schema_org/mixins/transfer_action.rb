require "active_support/concern"

module SchemaOrg
  module Mixins
    module TransferAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :from_location, optional: true # A sub property of location. The original location of the object or the agent before the action.
        option :to_location, optional: true # A sub property of location. The final location of the object or the agent after the action.
      end
    end
  end
end
