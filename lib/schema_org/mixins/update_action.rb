require "active_support/concern"

module SchemaOrg
  module Mixins
    module UpdateAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :collection # A sub property of object. The collection target of the action.
        option :target_collection # A sub property of object. The collection target of the action.
      end
    end
  end
end
