require "active_support/concern"

module SchemaOrg
  module Mixins
    module ReplaceAction
      extend ActiveSupport::Concern

      include UpdateAction

      included do
        option :replacee # A sub property of object. The object that is being replaced.
        option :replacer # A sub property of object. The object that replaces.
      end
    end
  end
end
