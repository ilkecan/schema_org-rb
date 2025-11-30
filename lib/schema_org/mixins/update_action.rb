require "active_support/concern"

module SchemaOrg
  module Mixins
    module UpdateAction
      extend ActiveSupport::Concern

      include Action

      included do
        option :collection, optional: true # A sub property of object. The collection target of the action. Superseded by `target_collection`.
        option :target_collection, optional: true # A sub property of object. The collection target of the action. Supersedes `collection`.
      end
    end
  end
end
