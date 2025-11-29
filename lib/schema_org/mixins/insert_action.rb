require "active_support/concern"

module SchemaOrg
  module Mixins
    module InsertAction
      extend ActiveSupport::Concern

      include AddAction

      included do
        option :to_location # A sub property of location. The final location of the object or the agent after the action.
      end
    end
  end
end
